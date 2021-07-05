clear;
WD=xlsread('Welldata.xlsx');
ED=xlsread('EQdata.xlsx');
[m,n]= size (WD);
[k,l]= size (ED);
%%
C=zeros(m,2);
R=0.09;
count=0;
for i=1:k
    for j=1:m
        if (WD(j,6)-ED(i,4))^2 + (WD(j,7)-ED(i,5))^2 <= R^2
            id1=j;
            id2=i;
            count=count+1;
            C(count,1)=WD(id1,1);
            C(count,2)=ED(id2,1);
        end;
    end;
end;
