# Zadatak 2.7 Napisati funkciju koja kao ulazni parametar ima matricu A, a kao
# izlazni matricu B istih dimenzija. Matrica B treba da sadrži iste elemente kao i
# matrica A, ali da ima zamenjenu levu u desnu polovinu matrice u odnosu na
# matricu A. Ukoliko je broj kolona matrice A neparan, srednju kolonu kopirati u
# matricu B. Zadatak uraditi na 2 načina: pomoću petlji i bez korišćenja petlji.

using Test
using Random

function matrica(A)
    (vrste, kolone) = size(A)
    B = zeros(vrste, kolone)

    polovina = floor(Int64, kolone / 2)
    ostatak =  floor(Int64, kolone % 2)

    if ostatak != 0
         B[:, kolone:-1:(polovina + 2)] = A[:, 1:polovina]  # leva polovina -> desna polovina
         B[:, 1:polovina] = A[:, (polovina + 2):kolone]     # desna polovina -> leva polovina
         B[:, (polovina + 1)] = A[:, (polovina + 1)]        # vrste se menjaju, kolona je fiksna

    else
         B[:, kolone:-1:(polovina + 1)] = A[:, 1:polovina]  # leva polovina -> desna polovina
         B[:, 1:polovina] = A[:, kolone:-1:(polovina + 1)]  # desna polovina -> leva polovina
    end
   

    return B
end

function main()
   A1 = [1 2 3; 4 5 6; 7 8 9]
   A2 = [1 2 3; 5 6 5; 3 6 4; 6 9 8]
   A3 = [1 2; 4 5; 6 7]
   A4 = [1 2 3 6; 5 6 5 2; 3 6 4 6; 6 9 8 7]

   @test matrica(A1) == reverse(A1, dims = 2)
   @test matrica(A2) == reverse(A2, dims = 2)
   @test matrica(A3) == reverse(A3, dims = 2)
   @test matrica(A4) == reverse(A4, dims = 2)
end

main()
