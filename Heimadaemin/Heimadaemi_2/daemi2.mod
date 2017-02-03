set birgi;
set sykur;

param s_percent{birgi, sykur}>=0;
param cost{birgi}>=0;
param cane{birgi};
param corn{birgi};
param beet{birgi};

var x{birgi}>=0;

minimize kostnad: sum{b in birgi} cost[b]* x[b];

subject to cane_sykur: sum{b in birgi} s_percent[b, 'cane'] * x[b] = 52;
subject to corn_sykur: sum{b in birgi} s_percent[b, 'corn'] * x[b] = 56;
subject to beet_sykur: sum{b in birgi} s_percent[b, 'beet'] * x[b] = 59;