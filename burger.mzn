% Making a burger
%include "globals.mzn";

var 1..5: beef;    % beef patties
var 1..5: bun;     % buns
var 1..5: cheese;  % cheese
var 1..5: onion;   % onion
var 1..5: pickle;  % pickle
var 1..5: lettuce; % lettuce
var 1..5: ketchup; % ketchup
var 1..5: tomato;  % tomato

% < 3000mg sodium
constraint 50*beef + 330*bun + 310*cheese + 1*onion + 260*pickle + 3*lettuce + 160*ketchup + 3*tomato < 3000;

% < 150g fat
constraint 17*beef + 9*bun + 6*cheese + 2*onion + 0*pickle + 0*lettuce + 0*ketchup + 0*tomato < 150;

% < 3000cal
constraint 220*beef + 260*bun + 70*cheese + 10*onion + 5*pickle + 4*lettuce + 20*ketchup + 9*tomato < 3000;

% taste standards
constraint ketchup = lettuce;
constraint pickle = tomato;

% maximise burger cost
solve maximize 0.25*beef + 0.15*bun + 0.1*cheese + 0.09*onion + 0.03*pickle + 0.04*lettuce + 0.02*ketchup + 0.04*tomato;

% print results
output ["no. of beef = ", show(beef), "\n",
				"no. of bun = ", show(bun), "\n",
  			"no. of cheese = ", show(cheese), "\n",
				"no. of onion = ", show(onion), "\n",
				"no. of pickle = ", show(pickle), "\n",
				"no. of lettuce = ", show(lettuce), "\n",
				"no. of ketchup = ", show(ketchup), "\n",
				"no. of tomato = ", show(tomato), "\n",
				"burger price: $", show(0.25*beef + 0.15*bun +
				0.1*cheese + 0.09*onion + 0.03*pickle + 
				0.04*lettuce + 0.02*ketchup + 0.04*tomato), "\n"];