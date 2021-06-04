# poziv.jl
# Autor: PR55-2020 Danijel Jovanović

include("Inicijalizacija/init.jl")
include("Dijkstra/Dijkstra.jl")

# Inicijalizacija grafa, dodavanje veza i težina
g = inicijalizuj_početne_vrednosti()

# Unos referentog čvora
unos = unos_broja()

# Dijkstra algoritam (prilagođen)
g, udaljeni = Dijkstra!(g, Int32(unos))

# Ispis razdaljina
ispis_razdaljina(g, udaljeni)
println("\n UDALJENOSTI U ODNOSU NA REFEREN. ČVOR $(unos).")