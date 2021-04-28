# Zadatak 6.4. Sortirati niz struktura koje predstavljaju studente prema prezimenu,
# upotrebom Quick sort algoritma. Ukoliko dva studenta imaju isto prezime, sortirati ih
# po imenu. Studente sa istim imenom i prezimenom sortirati po broju indeksa.
# Struktura koja predstavlja studenta sadrži polja ime, prezime i brojIndeksa. 

A = [5 7 2 4 6 1 3 8]

println("Pre sortiranja:")
display(A)

quickSort!(A)

println("\nPosle sortiranja:")
display(A)