# Zadatak 2.7 Napisati funkciju koja kao ulazni parametar ima matricu A, a kao
# izlazni matricu B istih dimenzija. Matrica B treba da sadrži iste elemente kao i
# matrica A, ali da ima zamenjenu levu u desnu polovinu matrice u odnosu na
# matricu A. Ukoliko je broj kolona matrice A neparan, srednju kolonu kopirati u
# matricu B. Zadatak uraditi na 2 načina: pomoću petlji i bez korišćenja petlji.

using Test
using Random

function matrica!(A)
    (vrste, kolone) = size(A)
    B = zeros(vrste, kolone)

    polovina = floor(Int64, kolone / 2)
    ostatak =  floor(Int64, kolone % 2)

    if ostatak != 0
        for i in 1:vrste  # leva polovina -> desna polovina
        for j in polovina:-1:1
                B[i, polovina + j + 1] = A[i, j]
            end
        end

        for i in 1:vrste # desna  polovina -> leva polovina
            for j in 1:polovina
                B[i, j] = A[i, polovina + j + 1]
            end
        end
    else
        for i in 1:vrste  # leva polovina -> desna polovina
            for j in polovina:-1:1
                 B[i, polovina + j] = A[i, j]
             end
         end

         for i in 1:vrste # desna  polovina -> leva polovina
            for j in 1:polovina
                B[i, j] = A[i, polovina + j]
            end
        end
    end
        
    if ostatak != 0 # srednju kolonu upiši u srednju kolonu nove matrice
        for i in 1:vrste  # vrste se menjaju, kolona je fiksna
            j = polovina + 1
            B[i, j] = A[i, j]
        end
    end

    return B
end

function main()
    A1 = [1 2 3; 4 5 6; 7 8 9]
    A3 = [1 2; 4 5; 6 7]

    @test matrica!(A1) == reverse(A1, dims = 2)
    @test matrica!(A3) == reverse(A3, dims = 2)
end

main()
