
#translate the input to prolog input format

def toProlog(L, L0, Sigma, Delta, Obs):
    # create a file to write to
    f = open("prologInput.pl", "w")
    # write the locations L -------------------------------------------- 
    f.write("% Locations  \n \n") 
    for i in range(len(L)):
        f.write("location(" + str(L[i]) + ").\n")
    f.write("\n")
        
    # write the initial location L0 ------------------------------------
    f.write("% Initial location \n \n")
    f.write("initial(" + str(L0) + ").\n")
    f.write("\n")
    
    # write the action alphabet Sigma-----------------------------------
    f.write("% Actions \n \n")
    agent = 0
    justOneLoop = True
    for i in range(len(Sigma)):
        agent += 1
        if justOneLoop:
            for j in range(len(Sigma[i])):
                f.write("action(" + str(Sigma[i][j]) + ").\n")
        justOneLoop = False
        f.write("\n")
    
    # write the action-labeled transitions Delta -----------------------
    # it should be like transition(start, [init, init], left).
    f.write("% transitions Delta \n \n")
    for i in range(len(Delta)):
        transitions = "transition(" + str(Delta[i][0]) + ", [" 
        for j in range(agent):
            transitions += str(Delta[i][1][j]) + ", "
        transitions = transitions[:-agent] + "], " + str(Delta[i][2]) + ").\n"
        f.write(transitions)
        
    
    # write the observation partitioning Obs ---------------------------
    #observation(p1, [start]).
    #observation(p1, [left, middle]). 
    
    f.write("% Observations \n \n")
    for i in range(len(Obs)):
        for j in range(len(Obs[i])):
            observations = "observation(p" + str(i+1) + ", ["
            for k in range(len(Obs[i][j])):
                observations += str(Obs[i][j][k]) + ", "
            observations = observations[:-2] + "]).\n"
            f.write(observations)
        f.write("\n")
        
    
    # write the number of agents ---------------------------------------
    f.write("% Agents \n \n")
    for i in range(agent):
        f.write("agent(" + "p" + str(i+1) + ").\n")
        
        