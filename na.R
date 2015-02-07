# checking for missing values.

# NA means an object is a missing value.
# NaN means a number is a missing value.
# NaN is an NA, but NA is not an NaN since the latter is only for numbers.

x <- c(1, 2, NaN, NA, 5) # create vector with missing values.

is.na(x) # check for NA, also finds NaN
# FALSE FALSE  TRUE  TRUE FALSE

is.nan(x) # chedk for NaN.  Note that NA is not TRUE.
# FALSE FALSE  TRUE FALSE FALSE

# Strip out NAs since many functions won't work on missing values.
NAs <- is.na(x) # find NAs
x[!NAs]         # remove NAs results: [1] 1 2 5


