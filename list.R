l <- list("a", 1, c(1, 2, 3))  # create a new list with three objects.

l[[1]]    # first item in list == "a"
l[[3]][2] # second entry in the vector, which is third item in list == 2

# create a list with named objects
ln <- list(one = 1, two = "two", one2three = c(1, 2, 3))
# results in:
#$one
#[1] 1
#
#$two
#[1] "two"
#
#$one2three
#[1] 1 2 3

ln$one # == 1 reference item named one.
ln$one <- 111 # assign 111 to the one item.

# get certain values from the list.
l[3]  # get the third item in the list, which is a list with a single item.
# [[1]]
# [1] 1 2 3
l[[3]] # get the third item in the list, in this case it's a vector because of [[]]
# This syntax is similar to $ above
# [1] 1 2 3
# l[c(1, 3)] # get a list of the first item and last item.
# [[1]]
# [1] "a"
#
# [[2]]
# [1] 1 2 3
l[[c(3,2)]]  # == 2 get the second entry of the third item in the list
