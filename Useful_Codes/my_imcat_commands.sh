# First we get dmstack output in l.csv which have 90 flags + 76 parameters.
# Then, we choose only few parameters, remove nans, and change delimiter from comma to tab.
#
# python remove_nans_dmstack.py l.csv gives l.txt from l.csv file.
#==================================================
# Input file src_lsst_z1.5_000.txt (NOTE: we need l.csv,l9.csv,m.csv,m9.csv for this script)
#
# column 0,1 :   fN = file_number, id = id
# column 2,3:   x = base_SdssCentroid_x, base_SdssCentroid_y
# column 4,5:  errx = base_SdssCentroid_xSigma, base_SdssCentroid_ySigma
# column 6,7:  e = ext_shapeHSM_HsmShapeRegauss_e1, ext_shapeHSM_HsmShapeRegauss_e2
# column 8:   flux = base_SdssShape_flux
#                   there are other flux e.g.
#                   base_CicularApertureFlux_3_0_flux, 4.5,6.0,9.0,12.0 etc
#                   base_GaussianFlux_flux
#                   I checked sdss vs gaussian scatterplot, they look linearly dependent, so
#                   we can use either of them, but I am using sdss.
#
#
#==================================================
# NOTE: here we denote ellipticiy e as g.
#             In physics, the reduced shear in weak lensing limit is g = e/2.
#            and e=sqrt(e1**2+e2**2) a
#           <e_i>/2 ~ g_i   where index i is t or c i.e. tangential or cross components.
#           This means in our ouptput column g is actually e and real g is g/2 or e/2.
#
#==================================================
# Required: This program needs four text files e.g. l.txt,l9.txt,m.txt and m9.txt
# Outputs: final.cat (also temporary outputs e.g. l,l9,m,m9.cat and merge.cat)

z=1.5
BEGIN=0
END=99 # end is included

# main output folder
mkdir -p final

# loop through range of files
for i in $(seq -f "%03g" $BEGIN $END)
do
L="src_lsst_z${z}_${i}"
L9="src_lsst90_z${z}_${i}"
M="src_lsst_mono_z${z}_${i}"
M9="src_lsst_mono90_z${z}_${i}"

# create lc catalog from text file
# the first column id and last column ellipticiy are not used.
#echo "Creating: .cat files";
lc -C -n fN -n id -N '1 2 x' -N '1 2 errx' -N '1 2 g' -n flux < "${L}".txt > "${L}".cat
lc -C -n fN -n id -N '1 2 x' -N '1 2 errx' -N '1 2 g' -n flux < "${L9}".txt > "${L9}".cat

lc -C -n fN -n id -N '1 2 x' -N '1 2 errx' -N '1 2 g' -n flux < "${M}".txt > "${M}".cat
lc -C -n fN -n id -N '1 2 x' -N '1 2 errx' -N '1 2 g' -n flux < "${M9}".txt > "${M9}".cat

# merge the 4 catalogs to a single catalog
# Make sure mergecats have mono files first and then chromatic files later
# to comply with the command to create final.cat.
#echo "Creating: merge.cat"
mergecats 5 "${M}".cat "${M9}".cat "${L}".cat "${L9}".cat > merge.cat &&
#echo "Created: merge.cat"

# convert the merge catalog into a catalog with mono and color shear values with the 0 degree and 90 degree values averaged:
#echo "Creating: final.cat";
lc -b +all 'x = %x[0][0] %x[1][0] + %x[2][0] + %x[3][0] + 4 / %x[0][1] %x[1][1] + %x[2][1] + %x[3][1] + 4 / 2 vector' 'gm = %g[0][0] %g[1][0] + 2 / %g[0][1] %g[1][1] + 2 / 2 vector' 'gc = %g[2][0] %g[3][0] + 2 / %g[2][1] %g[3][1] + 2 / 2 vector' < merge.cat > final/final_${i}.cat

echo "Created: final/final_${i}.cat"
done;

# combine all cats
cd final;
catcats *.cat > final.cat

# convert binary to text
lc -O < final.cat > final_text.txt 



#lc -c < catalog

#plotting values:
#plotcat var1 var2 < catalog
#(var1 is x axis, var2 is y axis, can just give a single vector variable name and get plots of x vs y for that vector)
#(can restrict the plotted region by adding a flag “-x x0 x1 y0 y1” after the variable names)

# Required: four txt files of l,l9,m,m9 from dmstack and filtering nans.
# Command: bash mycommands.sh
# output: final.cat (other .cat files are temporary outputs)
