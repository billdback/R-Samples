d <- as.Date("1968-02-16") # creates a date.
class(d)   # Date
unclass(d) # -685 (days before 1970-01-01)

# https://stat.ethz.ch/R-manual/R-devel/library/base/html/DateTimeClasses.html
t <- Sys.time() # get current time, e.g. "2015-02-14 09:38:06 PST"
p <- as.POSIXlt(Sys.time())  # gets a useful time that can be referenced.
p$hour # 9
p$mon  # 1 for January
p$year # 115
