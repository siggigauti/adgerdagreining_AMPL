set BorgirFra;
set BorgirTil;
set Flug within {BorgirFra, BorgirTil};

param eftirspurn{BorgirTil} >= 0;
param verd{Flug} >=0;

var x{Flug} >= 0;

subject to til_NY: sum{n in BorgirFra} (x[n, 'NewYork']) >= 325;
subject to til_C: sum{n in BorgirFra} (x[n, 'Chicago']) >= 300;
subject to til_T: sum{n in BorgirFra} (x[n, 'Topeka']) >= 275;

subject to fra_S: sum{m in BorgirTil} (x['Seattle', m]) <= 350;
subject to fra_SD: sum{m in BorgirTil} (x['SanDiego', m]) <= 600;

minimize kostnad: sum {(n,m) in Flug} x[n,m]*verd[n,m];

