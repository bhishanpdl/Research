#!/bin/env python
"""
Remove nans from textfile output of dmstack and only extract few columns
 Author: Bhishan Poudel

 Filtering:
 1. flag calib_psfCandidate==False
 2. column deblend_nChild==0
 3. ellipticity e =  sqrt(e1^2 + e2^2) < 1.5
 4. choose only few columns given below
 5. remove nans from all these columns
 6. change delimiter to tab.

Input columns:
    SN  Column: Name
    0    1   :  calib_psfCandidate (for filtering only)
    1    94  :  deblend_nChild (for filtering only)
    2    90  :  id
    3    102 :  base_SdssCentroid_x
    4    103 :  base_SdssCentroid_y
    5    104 :  base_SdssCentroid_xSigma
    6    105 :  base_SdssCentroid_ySigma
    7    127 :  ext_shapeHSM_HsmShapeRegauss_e1
    8    128 :  ext_shapeHSM_HsmShapeRegauss_e2
    9    114 :  ext_shapeHSM_HsmShapeRegauss_sigma


Output columns:
    cols_select = ['file_number', 'id',
           'base_SdssCentroid_x', 'base_SdssCentroid_y',
           'base_SdssCentroid_xSigma','base_SdssCentroid_ySigma',
           'ext_shapeHSM_HsmShapeRegauss_e1','ext_shapeHSM_HsmShapeRegauss_e2',
           'base_SdssShape_flux']

 We run this script on the folder having dmstack output csv files and all the csv files will be converted
 into new .txt files.

 Example:
 From: src_lsst90_z1.5_099.csv # these files are obtained from dmstack
 To:     src_lsst90_z1.5_099.txt

 python remove_nans.dmstack.py
"""

import pandas as pd
import numpy as np
import sys
import glob

def remove_nans(ifile,file_number):
    """ Remove nans and filter data from dmstack output csv file.

    Original dmstack output has 77 columns. First column is flags and second is id and last is footprint.
    First column has 90 flags in it, and we expand this column to get 90 + 76 = 166 columns.
    In python numbering starts from 0 so column 90 becomes id column after expanding columns.

    SN  Column: Name
    0    1   :  calib_psfCandidate (for filtering only)
    1    94  :  deblend_nChild (for filtering only)
    2    90  :  id
    3    102 :  base_SdssCentroid_x
    4    103 :  base_SdssCentroid_y
    5    104 :  base_SdssCentroid_xSigma
    6    105 :  base_SdssCentroid_ySigma
    7    127 :  ext_shapeHSM_HsmShapeRegauss_e1
    8    128 :  ext_shapeHSM_HsmShapeRegauss_e2
    9    114 :  ext_shapeHSM_HsmShapeRegauss_sigma

    In the output we also add fileNumber column.
    """

    usecols = [1, 94, 90, 102, 103, 104, 105, 127, 128, 114]
    df = pd.read_csv(ifile, sep=",",low_memory=False)


    for c in df.columns:
        df[c] = pd.to_numeric(df[c],errors='coerce')


    # filter the flag calib_psfCandidate==False
    # not a star candidate
    df = df.query('calib_psfCandidate == 0.0')

    # filter the column deblend_nChild==0
    # no child source after deblending
    df = df.query('deblend_nChild == 0.0')
    df = df.copy()

    # clean out unphysical results
    # e1^2 + e2^2 < 1.5^2
    df['e'] = (df['ext_shapeHSM_HsmShapeRegauss_e1'] ** 2 + df['ext_shapeHSM_HsmShapeRegauss_e2'] ** 2)**0.5

    df = df.query('e < 1.5')

    # add a new column with file_number
    df['file_number'] = file_number

    # take only required columns
    cols_select = ['file_number', 'id',
           'base_SdssCentroid_x', 'base_SdssCentroid_y',
           'base_SdssCentroid_xSigma','base_SdssCentroid_ySigma',
           'ext_shapeHSM_HsmShapeRegauss_e1','ext_shapeHSM_HsmShapeRegauss_e2',
           'base_SdssShape_flux']

    df = df[cols_select]

    # drop all nans
    df = df.dropna()

    # write txt file with commented header
    prefix = ' '*11
    header_line = prefix.join(cols_select)

    ofile = ifile[0:-4] + '.txt'
    np.savetxt(ofile,df.values,header=header_line,delimiter='\t')

if __name__ == '__main__':
    for ifile in glob.glob("*.csv"):
        print("Reading: ", ifile)
        file_number = int(ifile.rstrip('.csv').split('_')[-1])
        remove_nans(ifile, file_number)
