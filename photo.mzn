%lab photo
include "globals.mzn";

int: n;
int: n_prefs;
array [1..n_prefs, 1..2] of int: prefs;
array [1..n] of var 1..n: order;
array [1..n_prefs] of var int: dists;
var int: cost;
var int: max_dist;

constraint max_dist = max(dists);
constraint cost = among(dists, {1});
constraint alldifferent(order);
constraint order[1] < order[2];
constraint forall (i in 1..n_prefs) (dists[i] = abs(order[prefs[i,1]] - order[prefs[i,2]]));

%task 1
solve maximize cost;

%task 2
%solve minimize max_dist;

