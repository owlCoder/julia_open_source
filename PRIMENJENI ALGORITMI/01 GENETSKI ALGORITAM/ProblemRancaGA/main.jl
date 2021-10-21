#   PR55/2020 Danijel Jovanovic
#   Kreirati genetiski algoritam kojim se resava jednacina
# - 4x^2 - 6x - 3y^3 + 0.5y + 3z + 8w - 6.1u + 2v = 10
# - Resenje traziti u intervalu brojeva [-1, 1]
# - Ukrstanje vrsiti po parovima hromozoma, pocevsi od onih sa najmanjim fitnesom
# - Radi bolje konvergencije, korisitit elitu sa ucescem od 20%

include("geneticAlgorithm.jl")

genesLength = 6
populationSize = 500
fitValue = 0.0                 # ako brojevi daju kao resenje 0, to je resenje jednacine
crossoverPoint = rand(2:4)     # 1 ili 6 --> inf. loop
mutationPercentage = 20        # uslov 3 ?
selectionSize = 3              # bira se CHR
repeatSize = 10                # max RS

population = generatePopulation(populationSize, genesLength)
calculatePopulationFitness!(population, fitValue)
printPopulation(population)

popGen, repeatNum, population = geneticAlgorithm!(population, fitValue, selectionSize, crossoverPoint, mutationPercentage, repeatSize)
printPopulation(population)

println("\n\t\tUKUPAN BROJ GENERACIJA: $popGen")
println("\t\tCROSSOVER POINT: $crossoverPoint")
println("\t\tBR. PON. POSLEDNJEG BEST-FITA: $repeatNum.")