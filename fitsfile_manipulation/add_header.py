# Imports
from __future__ import print_function, unicode_literals, division, absolute_import,with_statement
import subprocess, sys, shutil, time, argparse, os
import math
import re
import copy
import numpy as np
from astropy.io import fits
# local imports
from util import replace_outfolder, run_process, updated_config


def add_headers(config, iofile):
    dat, hdr = fits.getdata(iofile, header=True)

    hdr['comment'] = '--------------------------------------------------------------------------------'
    hdr['comment'] = 'Jedisim Settings (z_lens to nsource)'
    hdr['z_lens'] = float(config['lens_z'])
    hdr['z_sim'] = float(config['fixed_redshift'])
    hdr['EXPTIME'] = int(config['exp_time'])
    hdr['noise'] = int(config['noise_mean'])

    hdr['xborder'] = int(config['x_border'])
    hdr['xborder'] = int(config['x_border'])
    hdr['xtrim'] = int(config['x_trim'])
    hdr['ytrim'] = int(config['y_trim'])

    hdr['nsimgal'] = int(config['num_galaxies'])

    hdr['minmag'] = int(config['min_mag'])
    hdr['maxmag'] = int(config['max_mag'])
    hdr['power'] = float(config['power'])

    hdr['lensx'] = int(config['lens_x'])
    hdr['lensy'] = int(config['lens_y'])
    hdr['lenstype'] = int(config['lens_type'])
    hdr['lens-p1'] = float(config['lens_p1'])
    hdr['lens-p2'] = float(config['lens_p2'])

    hdr['nsource'] = int(config['num_source_images'])


    fits.writeto(iofile, dat, header=hdr, overwrite=True)

def main():
    configm = updated_config('configm.sh')
    iofile = configm['lsst']
    add_headers(configm, iofile)


if __name__ == "__main__":
    #  Run the main program
    main()
