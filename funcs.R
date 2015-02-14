# Couple of simple functions.
square_it = function(x) { x^2 }
cube_it   = function(x) { x^3 }

# function that has a value and function.
compute = function (x, f) { f(x) }

# pass the function to use as an argument.
compute(3, square_it) # == 9
compute(3, cube_it)   # == 27

# another approach using fuctions inside of functions and lexical scoping.
# n will become part of the lexical scope of the returned function.
# x will be supplied when the function is called.
# this becomes cleaner to reuse.
make.compute = function(n) {
  function(x) { x^n }
}

# create functions that raise values.
square <- make.compute(2)
cube   <- make.compute(3)

# function does not have to be passed.
square(3) # == 9
cube(3)   # == 27

