from .state             import State
from .multiplayer_game  import MultiplayerGame

import re

def to_files(game, filename, folder="mkbsc", fileext=".pl"):
    """Export a game to a file"""
    if folder and len(folder) != 0:
        folder += "/"
    else:
        folder = ""
    with open(folder + filename + fileext, mode="w", encoding="utf8", newline="\n") as f:
        for line in _serialize(game):
            f.write(line + "\n")
    f.close()
    changeString(folder, filename)
            

           
#translate the game to input for prolog

def _serialize(game):
    
    
    #Actions and alphabet like this format
    
    # % agent 
  
  
    
    yield "% Agents \n"
    for player in range(game.player_count):
        yield "agent(p" + str(player + 1) + ")."
    yield "\n"
        
    
    # it shuld be like that format ex
    # location(start, left, middle, right).
   
    yield "% Locations \n"
    for state in game.states:
        yield "location(" +  str(state).replace( "(", "[").replace(")", "]") + ")."
    yield "\n"
        
    #initial(start).
    
    yield "% Initial location \n"
    yield "initial(" + str(game.initial_state).replace( "(", "[").replace(")", "]") + ")."
    yield "\n"
    
    #     % Act
   
    yield "% Actions \n"
    
    for player, alphabet in enumerate(game.alphabet):
        yield "% Player " + str(player + 1)
        for action in alphabet:
            yield "action(" + "[" +str(action) + "]" + ")."
        yield ""    
    yield "\n"
    
    

    #transition([start], [init, init], [left]).
    #should be like # location([[start], [start]).
    
     
    yield "% Transitions \n"
    for transition in game.transitions:
        yield "transition(" +  str(transition.start).replace( "(", "[").replace(")", "]") + ", [" + ", ".join(transition.joint_action).replace( "(", "[").replace(")", "]") + "], " + str(transition.end).replace( "(", "[").replace(")", "]") + ")."
    yield "\n"
     
    
   
    
    # observation(p1, [left, middle]).
    #observation(p2, [ [ [middle, left], [right, middle] ], [ [right], [right, middle] ], [ [middle], [right, middle] ] ]).
    
    for player, partitioning in enumerate(game.partitionings):
        yield "% Player " + str(player + 1)
        for observation in partitioning:
            yield "observation(p" + str(player + 1) + ", [" + ", ".join(str(state) for state in observation).replace( "(", "[").replace(")", "]") + "])."
        yield ""
    yield "\n"
   
 
    
def changeString(folder, filename):
    # read the file and change the string { to [ and } to ] using regex
    f = open(folder + "/" + filename + ".pl", "r")
    data = f.read()
    data = re.sub(r'{', r'[', data)
    data = re.sub(r'}', r']', data)
    
    with open(folder + "/" + filename + ".pl", "w") as f:
        f.write(data)