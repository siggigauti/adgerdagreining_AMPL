# ��ttir, hlutir
set car;

# g�gn fyrir hlutir
param factoryTimi{car};
param profit{car};
param orders{car};
param maxTimi;

# �kvar�anir
var fjoldi{car} >= 0;

# markmi�
maximize grodi: sum{c in car} fjoldi[c] * profit[c]; 

# skilyr�i
subject to uppfyllaPantanir {c in car}: fjoldi[c] >= orders[c];
subject to hamarksTimi: sum{c in car} fjoldi[c] * factoryTimi[c] <= maxTimi;