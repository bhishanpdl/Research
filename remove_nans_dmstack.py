# Remove nans from textfile output of dmstack and only extract x,y,e1,e2
# Author: Bhishan Poudel
import pandas as pd
import numpy as np
import sys

def remove_nans(ifile):
    df = pd.read_csv(ifile, sep=",",header=None,comment='#',usecols=(10,11,37,38))
    for c in df.columns:
        df[c] = pd.to_numeric(df[c],errors='coerce')

    # drop na
    df = df.dropna()

    # write file
    df.to_csv(ifile[0:-4]+'.txt',index=None,header=None,sep='\t')
    
ifile = sys.argv[1]
remove_nans(ifile)