% Agents 

agent(p1).
agent(p2).


% Locations 

location(([([start], [start])], [([start], [start])])).
location(([([right], [middle, right])], [([middle, left], [middle, right]), ([right], [middle, right])])).
location(([([middle, left], [middle, right]), ([middle, left], [left])], [([middle, left], [middle, right]), ([right], [middle, right])])).
location(([([middle, left], [middle, right]), ([middle, left], [left])], [([middle, left], [left])])).
location(([([middle], [middle, right])], [([middle, left], [middle, right]), ([middle], [middle, right]), ([right], [middle, right])])).
location(([([right], [middle, right])], [([middle, left], [middle, right]), ([middle], [middle, right]), ([right], [middle, right])])).
location(([([middle, left], [middle, right]), ([middle, left], [middle]), ([middle, left], [left])], [([middle, left], [middle, right]), ([middle], [middle, right]), ([right], [middle, right])])).
location(([([middle, left], [middle, right]), ([middle, left], [middle]), ([middle, left], [left])], [([middle, left], [middle])])).
location(([([middle, left], [middle, right]), ([middle, left], [middle]), ([middle, left], [left])], [([middle, left], [left])])).


% Initial location 

initial(([([start], [start])], [([start], [start])])).


% Actions 

% Player 1
action(init).
action(wait).
action(push).

% Player 2
action(init).
action(wait).
action(push).



% Transitions 

transition(([([start], [start])], [([start], [start])]), [init, init], ([([right], [middle, right])], [([middle, left], [middle, right]), ([right], [middle, right])])).
transition(([([start], [start])], [([start], [start])]), [init, init], ([([middle, left], [middle, right]), ([middle, left], [left])], [([middle, left], [middle, right]), ([right], [middle, right])])).
transition(([([start], [start])], [([start], [start])]), [init, init], ([([middle, left], [middle, right]), ([middle, left], [left])], [([middle, left], [left])])).
transition(([([right], [middle, right])], [([middle, left], [middle, right]), ([right], [middle, right])]), [wait, wait], ([([right], [middle, right])], [([middle, left], [middle, right]), ([right], [middle, right])])).
transition(([([right], [middle, right])], [([middle, left], [middle, right]), ([right], [middle, right])]), [push, wait], ([([right], [middle, right])], [([middle, left], [middle, right]), ([right], [middle, right])])).
transition(([([right], [middle, right])], [([middle, left], [middle, right]), ([right], [middle, right])]), [wait, push], ([([middle], [middle, right])], [([middle, left], [middle, right]), ([middle], [middle, right]), ([right], [middle, right])])).
transition(([([right], [middle, right])], [([middle, left], [middle, right]), ([right], [middle, right])]), [push, push], ([([right], [middle, right])], [([middle, left], [middle, right]), ([middle], [middle, right]), ([right], [middle, right])])).
transition(([([middle, left], [middle, right]), ([middle, left], [left])], [([middle, left], [middle, right]), ([right], [middle, right])]), [wait, wait], ([([middle, left], [middle, right]), ([middle, left], [left])], [([middle, left], [middle, right]), ([right], [middle, right])])).
transition(([([middle, left], [middle, right]), ([middle, left], [left])], [([middle, left], [middle, right]), ([right], [middle, right])]), [push, wait], ([([right], [middle, right])], [([middle, left], [middle, right]), ([right], [middle, right])])).
transition(([([middle, left], [middle, right]), ([middle, left], [left])], [([middle, left], [middle, right]), ([right], [middle, right])]), [wait, push], ([([middle, left], [middle, right]), ([middle, left], [left])], [([middle, left], [left])])).
transition(([([middle, left], [middle, right]), ([middle, left], [left])], [([middle, left], [middle, right]), ([right], [middle, right])]), [push, push], ([([middle, left], [middle, right]), ([middle, left], [middle]), ([middle, left], [left])], [([middle, left], [middle, right]), ([middle], [middle, right]), ([right], [middle, right])])).
transition(([([middle, left], [middle, right]), ([middle, left], [left])], [([middle, left], [left])]), [wait, wait], ([([middle, left], [middle, right]), ([middle, left], [left])], [([middle, left], [left])])).
transition(([([middle, left], [middle, right]), ([middle, left], [left])], [([middle, left], [left])]), [push, wait], ([([middle, left], [middle, right]), ([middle, left], [middle]), ([middle, left], [left])], [([middle, left], [middle])])).
transition(([([middle, left], [middle, right]), ([middle, left], [left])], [([middle, left], [left])]), [wait, push], ([([middle, left], [middle, right]), ([middle, left], [left])], [([middle, left], [left])])).
transition(([([middle, left], [middle, right]), ([middle, left], [left])], [([middle, left], [left])]), [push, push], ([([middle, left], [middle, right]), ([middle, left], [middle]), ([middle, left], [left])], [([middle, left], [left])])).
transition(([([middle], [middle, right])], [([middle, left], [middle, right]), ([middle], [middle, right]), ([right], [middle, right])]), [wait, wait], ([([middle, left], [middle, right]), ([middle, left], [left])], [([middle, left], [middle, right]), ([right], [middle, right])])).
transition(([([middle], [middle, right])], [([middle, left], [middle, right]), ([middle], [middle, right]), ([right], [middle, right])]), [push, wait], ([([right], [middle, right])], [([middle, left], [middle, right]), ([right], [middle, right])])).
transition(([([middle], [middle, right])], [([middle, left], [middle, right]), ([middle], [middle, right]), ([right], [middle, right])]), [wait, push], ([([middle, left], [middle, right]), ([middle, left], [left])], [([middle, left], [left])])).
transition(([([middle], [middle, right])], [([middle, left], [middle, right]), ([middle], [middle, right]), ([right], [middle, right])]), [push, push], ([([middle], [middle, right])], [([middle, left], [middle, right]), ([middle], [middle, right]), ([right], [middle, right])])).
transition(([([right], [middle, right])], [([middle, left], [middle, right]), ([middle], [middle, right]), ([right], [middle, right])]), [wait, wait], ([([right], [middle, right])], [([middle, left], [middle, right]), ([right], [middle, right])])).
transition(([([right], [middle, right])], [([middle, left], [middle, right]), ([middle], [middle, right]), ([right], [middle, right])]), [push, wait], ([([right], [middle, right])], [([middle, left], [middle, right]), ([right], [middle, right])])).
transition(([([right], [middle, right])], [([middle, left], [middle, right]), ([middle], [middle, right]), ([right], [middle, right])]), [wait, push], ([([middle], [middle, right])], [([middle, left], [middle, right]), ([middle], [middle, right]), ([right], [middle, right])])).
transition(([([right], [middle, right])], [([middle, left], [middle, right]), ([middle], [middle, right]), ([right], [middle, right])]), [push, push], ([([right], [middle, right])], [([middle, left], [middle, right]), ([middle], [middle, right]), ([right], [middle, right])])).
transition(([([middle, left], [middle, right]), ([middle, left], [middle]), ([middle, left], [left])], [([middle, left], [middle, right]), ([middle], [middle, right]), ([right], [middle, right])]), [wait, wait], ([([middle, left], [middle, right]), ([middle, left], [left])], [([middle, left], [middle, right]), ([right], [middle, right])])).
transition(([([middle, left], [middle, right]), ([middle, left], [middle]), ([middle, left], [left])], [([middle, left], [middle, right]), ([middle], [middle, right]), ([right], [middle, right])]), [push, wait], ([([right], [middle, right])], [([middle, left], [middle, right]), ([right], [middle, right])])).
transition(([([middle, left], [middle, right]), ([middle, left], [middle]), ([middle, left], [left])], [([middle, left], [middle, right]), ([middle], [middle, right]), ([right], [middle, right])]), [wait, push], ([([middle, left], [middle, right]), ([middle, left], [left])], [([middle, left], [left])])).
transition(([([middle, left], [middle, right]), ([middle, left], [middle]), ([middle, left], [left])], [([middle, left], [middle, right]), ([middle], [middle, right]), ([right], [middle, right])]), [push, push], ([([middle, left], [middle, right]), ([middle, left], [middle]), ([middle, left], [left])], [([middle, left], [middle, right]), ([middle], [middle, right]), ([right], [middle, right])])).
transition(([([middle, left], [middle, right]), ([middle, left], [middle]), ([middle, left], [left])], [([middle, left], [middle])]), [wait, wait], ([([middle, left], [middle, right]), ([middle, left], [left])], [([middle, left], [middle, right]), ([right], [middle, right])])).
transition(([([middle, left], [middle, right]), ([middle, left], [middle]), ([middle, left], [left])], [([middle, left], [middle])]), [push, wait], ([([right], [middle, right])], [([middle, left], [middle, right]), ([right], [middle, right])])).
transition(([([middle, left], [middle, right]), ([middle, left], [middle]), ([middle, left], [left])], [([middle, left], [middle])]), [wait, push], ([([middle, left], [middle, right]), ([middle, left], [left])], [([middle, left], [left])])).
transition(([([middle, left], [middle, right]), ([middle, left], [middle]), ([middle, left], [left])], [([middle, left], [middle])]), [push, push], ([([middle, left], [middle, right]), ([middle, left], [middle]), ([middle, left], [left])], [([middle, left], [middle])])).
transition(([([middle, left], [middle, right]), ([middle, left], [middle]), ([middle, left], [left])], [([middle, left], [left])]), [wait, wait], ([([middle, left], [middle, right]), ([middle, left], [left])], [([middle, left], [left])])).
transition(([([middle, left], [middle, right]), ([middle, left], [middle]), ([middle, left], [left])], [([middle, left], [left])]), [push, wait], ([([middle, left], [middle, right]), ([middle, left], [middle]), ([middle, left], [left])], [([middle, left], [middle])])).
transition(([([middle, left], [middle, right]), ([middle, left], [middle]), ([middle, left], [left])], [([middle, left], [left])]), [wait, push], ([([middle, left], [middle, right]), ([middle, left], [left])], [([middle, left], [left])])).
transition(([([middle, left], [middle, right]), ([middle, left], [middle]), ([middle, left], [left])], [([middle, left], [left])]), [push, push], ([([middle, left], [middle, right]), ([middle, left], [middle]), ([middle, left], [left])], [([middle, left], [left])])).


% Observations 

% Player 1
observation(p1, [([([start], [start])], [([start], [start])])]).
observation(p1, [([([right], [middle, right])], [([middle, left], [middle, right]), ([right], [middle, right])]), ([([right], [middle, right])], [([middle, left], [middle, right]), ([middle], [middle, right]), ([right], [middle, right])])]).
observation(p1, [([([middle, left], [middle, right]), ([middle, left], [left])], [([middle, left], [left])]), ([([middle, left], [middle, right]), ([middle, left], [left])], [([middle, left], [middle, right]), ([right], [middle, right])])]).
observation(p1, [([([middle], [middle, right])], [([middle, left], [middle, right]), ([middle], [middle, right]), ([right], [middle, right])])]).
observation(p1, [([([middle, left], [middle, right]), ([middle, left], [middle]), ([middle, left], [left])], [([middle, left], [left])]), ([([middle, left], [middle, right]), ([middle, left], [middle]), ([middle, left], [left])], [([middle, left], [middle])]), ([([middle, left], [middle, right]), ([middle, left], [middle]), ([middle, left], [left])], [([middle, left], [middle, right]), ([middle], [middle, right]), ([right], [middle, right])])]).

% Player 2
observation(p2, [([([start], [start])], [([start], [start])])]).
observation(p2, [([([middle, left], [middle, right]), ([middle, left], [left])], [([middle, left], [middle, right]), ([right], [middle, right])]), ([([right], [middle, right])], [([middle, left], [middle, right]), ([right], [middle, right])])]).
observation(p2, [([([middle, left], [middle, right]), ([middle, left], [left])], [([middle, left], [left])]), ([([middle, left], [middle, right]), ([middle, left], [middle]), ([middle, left], [left])], [([middle, left], [left])])]).
observation(p2, [([([middle], [middle, right])], [([middle, left], [middle, right]), ([middle], [middle, right]), ([right], [middle, right])]), ([([right], [middle, right])], [([middle, left], [middle, right]), ([middle], [middle, right]), ([right], [middle, right])]), ([([middle, left], [middle, right]), ([middle, left], [middle]), ([middle, left], [left])], [([middle, left], [middle, right]), ([middle], [middle, right]), ([right], [middle, right])])]).
observation(p2, [([([middle, left], [middle, right]), ([middle, left], [middle]), ([middle, left], [left])], [([middle, left], [middle])])]).



