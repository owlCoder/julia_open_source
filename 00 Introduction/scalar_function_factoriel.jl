function scalars(n, r)
    return fact(n) / (fact(r) * (n - fact(r)));
end

function fact(n)
    if n == 1
        return 1;
    else
        return n * fact(n - 1);
    end
end

function test_jl()
    l = scalars(5, 2);
    println(l);
end

test_jl();
