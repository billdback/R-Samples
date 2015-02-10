# This script demonstrates various control structures.

# Basic if
x <- "TRUE"
if (x) print("It's TRUE")

# if/else
x <- "FALSE"
if (x) {
  print("It's TRUE")
} else {               # NOTE: else has to be on the same line as the closing brace.
  print("It's FALSE")
}

# assign from an if statement
y <- if (x) 1 else 2 # y is 2.

v <- c(LETTERS[1:4])  # just grab the first four letters A, B, C, D

# for loop using an index.
for (i in 1:4) {
  print(v[i])  # prints the next letter.
}

# loop over a vector without index (cleaner)
for (l in v) print(l)  # prints the next letter.

# Nesting loops
m <- matrix (1:6, 2, 3) # two rows and three column matrix filled column wise.
#     [,1] [,2] [,3]
#[1,]    1    3    5
#[2,]    2    4    6

# loop over rows, then columns, 
for (i in seq_len(nrow(m))) {  # note that seq_len creates a vector of the given length. 
  for (j in 1:ncol(m)) {       # different way of creating the index
    print(m[i, j])
  }
}

# while loops
# not a great example - usually would be doing something like reading a file or doing something 
#   where it's not obvious when to stop.
count <- 0
while (count < 10) { # prints 0 to 9
  print(count)
  count <- count + 1
}

# repeat until breaking (probably better to use a while in most cases.)
#   But might be cleaner if want to do work and then check (similar to do..while in C-like languages.)
count <- 0
repeat {  # prints 0 to 9
  print(count)
  count <- count + 1
  if (count >= 10) break
}

