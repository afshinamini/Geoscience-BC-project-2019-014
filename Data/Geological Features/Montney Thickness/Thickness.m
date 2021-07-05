clc;
clear;
Mondata = xlsread('Montney .xlsx');
Debdata = xlsread('Debolt.xlsx');
Belldata = xlsread('Belloy Tops.xlsx');
%%
x = Mondata(:,14);
y = Mondata (:,15);
B = [];

for i = 1:length(x)
    for j = 1:length(y)
        if 