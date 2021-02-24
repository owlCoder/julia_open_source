using Plots

# Лоренцова структура
Base.@kwdef mutable struct Lorenz
    dt::Float64 = 0.02
    σ::Float64 = 12
    ρ::Float64 = 21
    β::Float64 = 8/4
    x::Float64 = 11
    y::Float64 = 1
    z::Float64 = 1
end

function step!(l::Lorenz)
    dx = l.σ * (l.y - l.x);         l.x += l.dt * dx
    dy = l.x * (l.ρ - l.z) - l.y;   l.y += l.dt * dy
    dz = l.x * l.y - l.β * l.z;     l.z += l.dt * dz
end

attractor = Lorenz()


# Празан тродимензионални плот са једном серијом
plt = plot3d(
    1,
    xlim = (-36, 30),
    ylim = (-46, 30),
    zlim = (0, 60),
    title = "Лоренцов систем",
    marker = 2,
)

# анимирани gif (сваки 10-ти фрејм се чува)
@gif for i=1:1500
    step!(attractor)
    push!(plt, attractor.x, attractor.y, attractor.z)
end every 10
