# Zadatak 6.3. Implementirati Quick sort u Julia-i tako da sortira elemente niza brojeva
# u opadajućem redosledu. Prebrojati koliko različitih brojeva postoji.

include("quickSort.jl")

A = [5 7 2 4 6 1 3 8]

println("Pre sortiranja:")
display(A)

quickSort!(A)

println("\nPosle sortiranja:")
display(A)

