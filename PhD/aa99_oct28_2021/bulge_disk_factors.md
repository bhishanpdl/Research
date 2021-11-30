# Star problem
- date: Oct 28, 2021
- path: `/Users/poudel/OneDrive - Ohio University/Research/c02_star_creation/a02_add_wcs_stars/stars_z1.5_300_e4_e8/`

After we get output from jedisim, we add wcs and stars to feed it to the lsst stack.

- We use the script `add_wcs_stars.py`
- Jedisim outputs are `jout_z1.5_ngals10k_000_099/lsst, lsst90, lsst_mono, lsst_mono90/fitsfiles`
- stars are `stars_z1.5_300_e4_e8/starb_z1.5_300_e4_e8.fits and so on.`
- Adding stars to mono and mono90:
  + mono + starm
- Addig stars to chro (chro is lsst and lsst90)
  + chro + starb + stard
- We also add fake WCS data to these files.
- Output is `wcs_star_jout_z1.5_ngals10k_000_099/lsst, lsst90, lsst_mono, lsst_mono90/fitsfiles`

# Attempt 01: Use bulge and disk factor
```
old:
mono = mono + starm
lsst = lsst + starb + stard

new:
mono_dmstack = mono + starm
lsst_dmstack = lsst + fB * starb + fD * stard

where, fB = LB/(LB + LD)
LB = total sum of pixels of file bulge_000.fits (the average of all 200 files)

Problem:
We found that fB varies greatly among bulge_000.fits to bulge_200.fits and
mean is not a good quantity here.

Here, lsst means lsst_000.fits which is obtained from jedisim. Which has 10k objects randomly chosen from database. The database has bulge and disk components.

The bulge and disk are also scaled there, so that the total flux is constant.
```