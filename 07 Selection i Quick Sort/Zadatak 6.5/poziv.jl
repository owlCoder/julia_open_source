# Zadatak 6.5. Sortirati reči u rečniku upotrebom Selection sort algoritma. Reči su
# zadate kao niz stringova. Nakon toga, prebrojati koje reči se najviše puta pojavljuju.

# KOREKCIJA: KORISTI SE QUICK SORT ALGORITAM JER Selection Sort ne radi!
include("recnik.jl")
# include("selectionSort.jl")
include("quickSort.jl")
include("pretragaPojava.jl")

println("Rečnik pre sortiranja")
ispisRečnika(recnici)

quickSort!(recnici)
println("\nRečnik posle sortiranja")
ispisRečnika(recnici)

elementiPojave, brojPojava = pretraga(recnici)
println("\nPretraga pojava reči najveći broj puta...\n>> $elementiPojave\n>> ponovljena $brojPojava puta...\n")
