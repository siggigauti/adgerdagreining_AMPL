# þættir, hlutir
set car;

# gögn fyrir hlutir
param factoryTimi{car};
param profit{car};
param orders{car};
param maxTimi;

# ákvarðanir
var fjoldi{car} >= 0;

# markmið
maximize grodi: sum{c in car} fjoldi[c] * profit[c]; 

# skilyrði
subject to uppfyllaPantanir {c in car}: fjoldi[c] >= orders[c];
subject to hamarksTimi: sum{c in car} fjoldi[c] * factoryTimi[c] <= maxTimi;