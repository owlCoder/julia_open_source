#== Zadatak 8.3 Napisati program koji u lavirintu pronalazi i ispisuje broj soba
(ostrva) koristći BFS algoritam. Pod jednom sobom se podrazumevaju sva
polja do kojih je moguće doći počevši od bilo kojeg elementa te sobe.
– Ideja: Pogledati zadatak 7.3. Kreirati funkcije BFS i BFS_visit, pri čemu
BFS vrši inicijalizaciju i pokreće po jednom BFS_visit za svaku sobu. ==#

include("graph.jl")

function BFS!(Graf, početak, kraj)
    v = 1:size(Graf.AdjMatrix, 1)
    
    for u = v
        Graf.V[u].boja = 'W'
        Graf.V[u].udaljenost = typemax(Int64)
        Graf.V[u].prethodni = -1
    end

    DFS_Poseti!(Graf, početak, kraj, početak)
end

function DFS_Poseti!(Graf, u, kraj, početak)
    if u == kraj
        putanja = pronađiPutanju(Graf, početak, kraj)
        println("Put: $putanja")
    else
        Graf.V[u].boja = 'G'

        for v in findall(Graf.AdjMatrix[u, :] .== 1)
            if Graf.V[v].boja == 'W'
                G.V[v].prethodni = u
                DFS_Poseti!(Graf, v, kraj, početak)
            end
        end
        G.V[u].boja = 'W'
    end
end