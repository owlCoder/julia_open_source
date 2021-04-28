# Zadatak 6.1. Implementirati Selection sort u Julia-i koji sortira elemente niza brojeva
# u opadajućem redosledu. Pronaći najveću razliku između dva susedna broja u
# sortiranom nizu

include("selectionSort.jl")

A = [5 7 2 4 6 1 3]

println("Pre sortiranja:")
display(A)

selectionSort!(A)
println("\nPosle sortiranja:")
display(A)