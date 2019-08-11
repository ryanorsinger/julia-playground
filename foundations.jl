working_directory = pwd()
println("The current working directory is", working_directory)

print(2+2)
"Hello", "World"

# Use the julia package tool
using Pkg

# Show what packages are currently installed
print(Pkg.installed())

print("Hello, World!")

print(3^2)
typeof(2)
typeof(5.23)
typeof("Howdy, Ya'll!")
typeof("23")

# How many secords are there in 42 minutes and 42 seconds
42*60 + 42

# How many miles are there in 10 kilometers
10 / 1.61

# To get pi, to \pi then TAB to autocomplete
π

x = 5
3x

parse(Int64, "32")
parse(Float64, "3.32")
string(45)
sin(45)
log10(123)

degrees = 45
x = sin(degrees / 360 * 2 * π)
x = exp(log(x+1))

sqrt(5)

function voidfunc()
    println("printing is a liar")
end

print(typeof(voidfunc()))
