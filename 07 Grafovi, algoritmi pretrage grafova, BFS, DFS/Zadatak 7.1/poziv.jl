include("GRAPH!/graph.jl")
include("BFS!/BFS.jl")

M = [0 1 1 0 0 0; 
     1 0 0 1 0 1; 
     1 0 0 0 1 0;
     0 1 0 0 0 0; 
     0 0 1 0 0 1; 
     0 1 0 0 1 0]

G = neprazanGraf(M)
path = BFS!(G, 1, 6)

println("Path = $path");