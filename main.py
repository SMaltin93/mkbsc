#!/usr/bin/env python3

from mkbsc import MultiplayerGame, getPrologInput, iterate_until_isomorphic, export, to_string,toProlog, from_string, to_file, from_file


# --------------------------------------------------------------------

# The Cart Pushing Game  
#
# States
L = ["start", "left","middle", "right"]

# Initial state
L0 = "start"

# Action alphabet
Sigma = (("init", "wait", "push"), ("init", "wait", "push"))

# Action-labeled transitions
Delta = [
     ("start", ("init", "init"), "left"), ("start", ("init", "init"), "middle"),
     ("start", ("init", "init"), "right"),
     
     ("left", ("wait","wait"), "left"), ("left", ("wait","push"), "left"),
     ("left", ("push","push"), "left"), ("left", ("push","wait"), "middle"),
     
     ("middle", ("wait","wait"), "middle"), ("middle", ("wait","push"), "left"),
     ("middle", ("push","push"), "middle"), ("middle", ("push","wait"), "right"),
     
     ("right", ("wait","wait"), "right"), ("right", ("wait","push"), "middle"),
     ("right", ("push","push"), "right"), ("right", ("push","wait"), "right")
]

# Observation partitioning
Obs = [
     [["start"], ["left", "middle"], ["right"]],
     [["start"], ["left"], ["right", "middle"]]
]

# make input for prolog
#toProlog(L, L0, Sigma, Delta, Obs)

# G is a MultiplayerGame-object

G = MultiplayerGame.create(L, L0, Sigma, Delta, Obs)

GK = G.KBSC()
GK0 = G.project(0)
getPrologInput.to_files(GK, "inputProlog")
# print partitioning 
#export the GK game to ./pictures/GK.png
#export(G, "G")
