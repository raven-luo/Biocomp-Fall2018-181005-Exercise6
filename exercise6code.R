rm(list=ls()) # remove global environment
setwd("C:/Users/raven/Desktop/biocomputing/exercise6/Biocomp-Fall2018-181005-Exercise6/") # remember quotes and C:
filename=read.csv(readline(prompt="Which file do you want to check:"),stringsAsFactors = F)
number=readline(prompt="How many lines from the top do you want to read:")
output=head(filename,n=number)
output
