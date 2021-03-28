function podeli(x, y)
    if y == 0
        error("NE DELIM SA NULOM!");
    elseif isa(x, String)
        error("STRINOGOVE SE NE MOGU PODELITI!")
    else
        return x / y;
    end
end

podeli(5.2, 1)
podeli("pet", 2)
podeli(5, 0)
