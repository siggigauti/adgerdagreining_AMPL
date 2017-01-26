set vorur;
set efni;

param amt {vorur, efni};
param lager{efni};
param verd{vorur};

var fjoldi{vorur} >= 0;

subject to hamark_efni{h in efni}: sum{v in vorur} amt[v, h]*fjoldi[v] <= lager[h];

maximize hagnadur: sum{v in vorur} fjoldi[v] * verd[v];
