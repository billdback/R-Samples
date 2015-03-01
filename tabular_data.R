# Example of reading and manipulating data.  The source file are NFL statistics for 2014
# taken from NFL.com (http://www.nfl.com/stats/categorystats?tabSeq=2&defensiveStatisticCategory=GAME_STATS&conference=ALL&role=OPP&season=2014&seasonType=REG&d-447263-s=TOTAL_YARDS_GAME_AVG&d-447263-o=1&d-447263-n=1)

# Note that this example assumes the file is in the current working directory.
# use setwd("somedir") to set.

# profile the data by reading the first 10 lines.  This is more useful for large files and
# speeds up the read.
init <- read.csv("NFL2014.csv", nrows=10) # read 10 rows.  First row will be header.
classes <- sapply (init, class) # get the class for each column.

# read in the file. 
data <- read.csv ("NFL2014.csv",  # name of file to read.
                  header = TRUE,  # TRUE is default
                  # sep = ","     # would need to set if using read.table
                  colClasses = classes
                  )

# dump the data to an R object that can allow it to be recreated.
dput(data, "stats.R")     # write the data
data2 <- dget("stats.R")  # read the data
all(data == data2)        # should be TRUE

head(data, 10)  # get first 10 rows.
tail(data, 10)  # get the last 10 rows.

# Find the teams that gave up more than 25 points per game.
data["Team"][data["PointsPerGame"] > 25]
# Find teams that gave up more than 200 yards per game and had more than 100 penalties.
data["Team"][data["YardsPerGame"] > 200 & data["Penalties"] > 100]

# subset(data.frame, comparison, columns_to_return).  Easier than [] notation.
# returns the team name and rank of all teams with more than 100 penalties and 1000 penalty yards.
subset(data, 
       data["Penalties"]>100 & data["TotalPenaltyYards"] > 1000, 
       c("Team", "Rank"))
#                   Team Rank
# 8     Baltimore Ravens    8
# 9   San Diego Chargers    9
# 20 Washington Redskins   20
# 24   Arizona Cardinals   24

# Reverse order the frame by total penalty yards.  Additional order values listed.
data[order(-data["TotalPenaltyYards"]),]

