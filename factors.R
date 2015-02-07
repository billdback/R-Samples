# Factors are similar to enumerated types in other programming languages.

# ordered factors (values have some order, e.g. small, medium, large)
sizes <- factor(c("small", "medium", "small", "large", "medium", "large"),
                levels = c("small", "medium", "large"))  # levels sets the order.
# small medium small large medium large

table(sizes) # print the table.  Note the order is based on the levels.
# small medium large
#     2      2     2

# unordered factors (values have no order, e.g. male and female)
# create a new factor with some values.
uf <- factor(c("male", "female", "female", "male", "male")) # create an unordered factor
# uf == male, female, female, male, male
# 
table(uf) # puts the number of values into a table.
# female male
#      2    3

levels(uf)  # gets the available levels or values.
# "female" "male"

unclass(uf) # prints the integer values.  Note they are alphabetical.
# 2, 1, 1, 2, 2 
