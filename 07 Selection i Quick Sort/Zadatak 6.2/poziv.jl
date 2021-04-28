# Zadatak 6.2. Sortirati rastuće niz struktura koje predstavljaju studente prema broju
# indeksa, upotrebom Selection sort algoritma. Struktura koja predstavlja studenta
# sadrži polja ime, prezime i brojIndeksa.    

include("student.jl")
include("selectionSort.jl")

A = [5 7 2 4 6 1 3 8]

println("Pre sortiranja:")
display(A)

selectionSort!(A)

println("\nPosle sortiranja:")
display(A)