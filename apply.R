# examples of using different *apply functions.
# apply functions use a split-apply-combine:
#   split the data somehow (usually by factor values)
#   apply a function, e.g. mean
#   combine into a single result

set.seed(1)
nums <- runif(20) 
# [1] 0.26550866 0.37212390 0.57285336 0.90820779 0.20168193 0.89838968
# [7] 0.94467527 0.66079779 0.62911404 0.06178627 0.20597457 0.17655675
# [13] 0.68702285 0.38410372 0.76984142 0.49769924 0.71761851 0.99190609
# [19] 0.38003518 0.77744522

# multiple each by two using lapply
dbl <- function (v) { v * 2 }
ldbl_nums <- lapply(nums, dbl)
class(dbl_nums) # [1] list
# head(dbl_nums, 5)
# [[1]]
# [1] 0.5310173
# 
# [[2]]
# [1] 0.7442478
# 
# [[3]]
# [1] 1.145707
# 
# [[4]]
# [1] 1.816416
# 
# [[5]]
# [1] 0.4033639

sdbl_nums <- sapply(nums, dbl) # result is teh same, but returned as a numeric vector.
class(dbl_nums) # [1] "numeric"
# sdbl_nums
# [1] 0.5310173 0.7442478 1.1457067 1.8164156 0.4033639 1.7967794 1.8893505
# [8] 1.3215956 1.2582281 0.1235725 0.4119491 0.3531135 1.3740457 0.7682074
# [15] 1.5396828 0.9953985 1.4352370 1.9838122 0.7600704 1.5548904

# vapply is like sapply, but you can specify the expected results.
vdbl_nums <- vapply(nums, dbl, numeric(1))
# [1] 0.5310173 0.7442478 1.1457067 1.8164156 0.4033639 1.7967794 1.8893505
# [8] 1.3215956 1.2582281 0.1235725 0.4119491 0.3531135 1.3740457 0.7682074
# [15] 1.5396828 0.9953985 1.4352370 1.9838122 0.7600704 1.5548904

# vapply(nums, dbl, character(1)) # will cause an error.
# Error in vapply(nums, dbl, character(1)) : 
#   values must be type 'character',
# but FUN(X[[1]]) result is type 'double'

# split based on a factor and apply a function.
gender <- c("male", "male", "female", "female", "female")
age    <- c(10, 30, 20, 50, 40)
people <- data.frame(gender, age)
#   gender age
# 1   male  10
# 2   male  30
# 3 female  20
# 4 female  50
# 5 female  40

# calculate the average age by gender.
tapply(people$age, people$gender,  mean)
#   female     male 
# 36.66667 20.00000 
