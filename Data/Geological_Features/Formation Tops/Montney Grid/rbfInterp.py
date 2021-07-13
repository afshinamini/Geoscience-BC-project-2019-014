# -*- coding: utf-8 -*-
"""
Created on Tue Nov 24 18:41:36 2020

@author: aamini
"""

import numpy as np
import pandas as pd
from scipy.interpolate import Rbf
from sklearn.neighbors import NearestNeighbors

d1 = pd.read_csv('Montney.csv')
d2 = pd.read_csv('Montney2.5kmgrid.csv')


#%%

x = d1["X"]
y = d1["Y"]
d = d1["Montney-TVD"]

rbfi = Rbf(x, y, d)
#%%
xi = d2["X"]
yi = d2["Y"]

di = rbfi(xi, yi)

#%%

neigh = NearestNeighbors(n_neighbors=3)
neigh.fit(samples)