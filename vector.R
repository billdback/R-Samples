v <- c(1:20)           # create a vector with the values 1-20

v1    <- v[1]          # get the first value in the vector == 1
v10   <- v[10]         # get the 10th value in the vector == 10
v1to3 <- v[1:3]        # get the firt three value = [1, 2, 3]

# get all of the elements except the 5th
v[-5] 
# 1  2  3  4  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 


vc <- as.character(v)  # convert to a character vector ["1", "2", ...]

# operations on vectors work on each item.
v*2                    # multiply each item in the array by 2
# 2  4  6  8 10 12 14 16 18 20 22 24 26 28 30 32 34 36 38 40

# assign names to values
vn <- c(1:3)
names(vn) <- c("one", "two", "three") # assign names to the values.
# vn is now:
# one   two three 
# 1     2     3

# get elements based on value.
v[v > 10] # numbers greater than 10
# 11 12 13 14 15 16 17 18 19 20

v[v > 5 & v < 15] # value between 5 and 15
# 6  7  8  9 10 11 12 13 14

# vector operations.  Vectors work over the entire vector.
v1 <- 1:10 # vector of ten integers.
v2 <- 1:2  # vector of two integers.
v1 * v2    # multiply becomes 1*1, 2*2, 3*1, 4*2, etc. 1  4  3  8  5 12  7 16  9 20

# just for fun, create a vector using seq()
seq(1, 20, 2)  # [1]  1  3  5  7  9 11 13 15 17 19

# in reverse with a length
seq(20, 1, length = 5)  # [1] 20.00 15.25 10.50  5.75  1.00

# create a repeating pattern of a single value.
rep("a", 10) # [1] "a" "a" "a" "a" "a" "a" "a" "a" "a" "a"
# create a repeating pattern of a vector.
rep(c("a", "b", "c"), 3) # [1] "a" "b" "c" "a" "b" "c" "a" "b" "c"



