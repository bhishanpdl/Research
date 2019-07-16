After dmstack analysis
=======================
1. The scipt `run_after_dmstack.sh` runs the script `after_dmstack.sh`
   multiple times based on number of text files in the directory
   `txt10_wcs_star_jout1.5_000_099` which was copied from simplici to
   pisces and it has .csv files obtained from dmstack after adding stars to
   jedisim outputs. All the .csv files are in the same folder. Eg. the 
   folder 'txt10_wcs_star_jout1.5_000_099' has csv files like
   'src_lsst_mono_z1.5_000.csv' and similarly lsst, lsst90 and lsst_mono90
   are also there.


2. Required:
- run_after_dmstack.sh # Runner for main program  
- after_dmstack.sh  # main program
- remove_nans_dmstack.py # main program will use it to convert .csv to .txt 
                       # with removing nans and getting only x,y,e1,e2
- folder with text files from dmstack output from computer simplici

3. Command:
First edit the script 'run_after_dmstack.sh' and run it.
command: bash run_after_dmstack.sh
Expected time: 36 seconds for 10 files where file6 has missing mono file.

4. Outputs:
- .csv files are copied from text folder in the loop
- .txt files are created from .txt files after removing nans
- .cat files are created from IMCAT as intermediate objects
- .pdf files are created one for each text files
- output.pdf is combination of all pdf outputs

Note: not all the text files may have all four l,l9,m,m9 files but still we get pdf file for them if at least one of four exists.

