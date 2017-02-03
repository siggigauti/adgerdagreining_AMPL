# ��ttir, hlutir
set typa;

# g�gn fyrir hlutir
param kostn{typa};
param ahorfendur{typa};
param budget;

# �kvar�anir
var fjoldi{typa} >= 0;

# markmi�
maximize ahorf: sum{v in typa} fjoldi[v] * ahorfendur[v]; 

# skilyr�i
subject to HamarksKostn: sum{v in typa} fjoldi[v] * kostn[v] <= budget;
subject to MinnstTV: fjoldi['TV'] >= 10;
subject to MinnstMag: fjoldi['Mag'] >= 2;
subject to MaxRadio: fjoldi['Radio'] <= 120;
subject to vinnuVika: fjoldi['TV'] + 3*fjoldi['Mag'] + (1/7)*fjoldi['Radio'] <= 100