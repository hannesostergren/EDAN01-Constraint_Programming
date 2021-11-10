%lab photo
include "globals.mzn";

int: n;
int: n_prefs;
array [1..n_prefs, 1..2] of int: prefs;
array [1..n] of var 1..n: order;
array [1..n_prefs] of var int: dists;

constraint alldifferent(order);
constraint order[1] < order[2];
constraint forall (i in 1..n_prefs) (dists[i] = abs(order[prefs[i,1]] - order[prefs[i,2]]));

%task 1
%solve maximize among(dists, {1});

%task 2
solve minimize max(dists);