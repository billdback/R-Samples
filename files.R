dir.create("foo")    # create a directory
setwd("foo")         # change to that directory
file.create("foo.R") # create a file
file.info("foo.R")   # get info about the file
list.files()         # list all of the files in the working directory.
setwd("..")          # go back to the parent directory (might be Unix only).
unlink("foo", recursive="TRUE") # delete the directory and all sub-directories and files.

