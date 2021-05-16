#== Zadatak 8.3 Napisati program koji u lavirintu pronalazi i ispisuje broj soba
(ostrva) koristći BFS algoritam. Pod jednom sobom se podrazumevaju sva
polja do kojih je moguće doći počevši od bilo kojeg elementa te sobe.
– Ideja: Pogledati zadatak 7.3. Kreirati funkcije BFS i BFS_visit, pri čemu
BFS vrši inicijalizaciju i pokreće po jednom BFS_visit za svaku sobu. ==#

function BFS!(Graf)
    v = 1:size(Graf.AdjMatrix, 1)
    
    for u = v
        Graf.V[u].color = 'W'
        Graf.V[u].pred = -1
    end

    rbOstrva = 0

    for u = v
        if Graf.V[u].color == 'W' && Graf.V[u].type == 'P' && Graf.V[u].pred <= 1   
            rbOstrva += 1
            BFS_Visit!(G, u, rbOstrva)
        end
    end
end

function BFS_Visit!(Graf, u, rbOstrva)
    G.V[u].d = rbOstrva    
    Graf.V[u].color = 'G'

    for v in findall(Graf.AdjMatrix[u, :] .== 1)
        if Graf.V[v].color == 'W' && Graf.V[v].type == 'P'
            BFS_Visit!(Graf, v, rbOstrva)
        end
    end
    G.V[u].color = 'B'
end

