# Frames are multidimensional values, similar to a matrix, that can hold different types of
# objects (unlike a matrix).  Each ?? must have objects of the same type.
# Each column must have a same lenght, but can be different types.

# create a data frame.  More commonly read from a table or file.
rnames = c("a", "b", "c", "d") # use so the rows are named.  If not would just be 1, 2, 3, 4.
f <- data.frame(col1 = 1:4, col2 = c("one", "two", "three", "four"), col3=c("odd", "even", "odd", "even"),
                row.names = rnames)
print(f)
# col1  col2 col3
# 1    1   one  odd
# 2    2   two even
# 3    3 three  odd
# 4    4  four even

nrow(f) # number of rows == 4
ncol(f) # number of cols == 3