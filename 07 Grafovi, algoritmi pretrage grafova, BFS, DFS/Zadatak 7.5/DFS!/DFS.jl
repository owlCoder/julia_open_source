function DFS!(Graf)
    v = 1:size(Graf.AdjMatrix, 1)
    
    for u = v
        Graf.V[u].boja = 'W'
        Graf.V[u].prethodni = -1
    end

    for u = v
        if G.V[u].boja == 'W'
            DFS_Poseti!(Graf, u)
        end
    end
end

function DFS_Poseti!(Graf, u)
    Graf.V[u].boja = 'G'

    for v in findall(Graf.AdjMatrix[u, :] .== 1)
        if Graf.V[v].boja == 'W'
            G.V[v].prethodni = u
            DFS_Poseti!(Graf, v)
        end
    end
    G.V[u].boja = 'B'
end