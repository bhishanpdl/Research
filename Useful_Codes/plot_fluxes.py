# @author      : Bhishan Poudel
# @file        : plot_fluxes.py
# @created     : Thursday Jun 13, 2019 16:39:45 EDT

import numpy as np
import pandas as pd
import sys, os, argparse
import matplotlib.pyplot as plt

infile = 'src_lsst_z1.5_001.csv'

# read sdss and gaussian flux
df = pd.read_csv(infile)

#print(df.columns)

flux_sdss = df['base_SdssShape_flux'].astype(float)
flux_gau = df['base_GaussianFlux_flux'].astype(float)

#print(flux_sdss.dtype)
#print(flux_sdss[:5])

plt.scatter(flux_sdss, flux_gau)
plt.xlabel('base_SdssShape_flux')
plt.ylabel('base_GaussianFlux_flux')
plt.tight_layout()
plt.savefig('sdss_vs_gaussian_flux.png')
plt.show()
