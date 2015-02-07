m <- matrix (1:6, nrow=2, ncol=3) # create an empty 2x3 matrix.
# values are filled by row, so the result looks like the following.
# 1, 3, 5
# 2, 4, 6

# get values. The first entry is the row, the second is the column.
m[2,3] # == 6
m[1,2] # == 4

# set values.  The first entry is the row, the second is the column.
m[1,1] <- 11   # set first row, first col to 11.
m[2,1] <- 12   # set the second row, first col to 12.

# get slices of matrices (i.e. just a single row or column) as a vector
m[1,] # first row 1, 3, 5
m[,2] # second col 3, 4

# get the dimensions 2 rows, 3 cols
dim(m)                           

# convert a vector to a matrix.  
v <- 1:10 # creates a vector with values 1, 2, ..., 10
m <- matrix(v, 2, 5) # create matrix with 2 rows and 5 columns.
# 1, 3, 5, 7,  9
# 2, 4, 6, 8, 10

# create matrix by binding columns and rows.
#   NOTE:  if one vector is longer, the original vector is reused.  However, the
#          longer vector must have a multiple of the shorter.  E.g. 3 and 6, 9, etc.
x <- 1:3  # vector of 1, 2, 3
y <- 5:10 # vector of 5, 6, 7, 8, 9, 10
z <- 1:6
m <- cbind(x, y, z) # bind x to first column, y to second, z to the third
# 1,  5, 1
# 2,  6, 2
# 3,  7, 3
# 1,  8, 4
# 2,  9, 5
# 3, 10, 6

m <- rbind(x, y, z) # bind x to first row, y to second, z to the third
# 1, 2, 3, 1, 2,  3
# 5, 6, 7, 8, 9, 10
# 1, 2, 3, 4, 5,  6

# name dimensions for matrices for easier reading
r <- 1:3
c <- 4:6
m <- cbind(r, c)
dimnames(m) <- list(c("r1", "r2", "r3"), c("c1", "c2"))
# creates the following
#    c1 c2
# r1  1  4
# r2  2  5
# r3  3  6
m["r1", "c2"]  # == 4 reference by name instead of index.

# matrix multiplication has a special operator.
m1 <- matrix(1:6, nrow=2, ncol=3)
#      [,1] [,2] [,3]
# [1,]    1    3    5
# [2,]    2    4    6
m2 <- matrix(1:6, nrow=3, ncol=2)
#      [,1] [,2]
# [1,]    1    4
# [2,]    2    5
# [3,]    3    6
m3 <- m1 %*% m2 # results in 2x2 since m1 has 2 rows.
#      [,1] [,2]
# [1,]   22   49
# [2,]   28   64
m4 <- m2 %*% m1 # results in 3x3 since m2 has 3 rows.
#      [,1] [,2] [,3]
# [1,]    9   19   29
# [2,]   12   26   40
# [3,]   15   33   51
