rm(list=ls())
setwd("C:/Users/raven/Desktop/biocomputing/exercise6/Biocomp-Fall2018-181005-Exercise6/")
iris=read.csv("iris.csv",header=T,stringsAsFactor=F)

#Part 1
(last2=iris[149:150,4:5])
(last2.2=iris[(nrow(iris)-1):nrow(iris),(ncol(iris)-1):ncol(iris)])
#last2.2 is an alternative of last2, where we don't want to look up the dimensions of iris

#Part 2
(iriscountspecies=as.data.frame(table(iris$Species)))
#the table function gives a table of frequencies. I can convert to a dataframe to make it look better
#checked with grep to make sure this is correct
#i believe this is flexible code because you can also count frequencies in other columns

#Part 3
(irisbigsepal=iris[iris$Sepal.Width>3.5,])
#index, all the rows where sepal width>3.5, take all columns
#to check, enable the following line:
#(min(irisbigsepal$Sepal.Width))

#Part 4
write.table(iris[iris$Species=="setosa",],file="setosa.csv",sep=",")
#even the header transferred over

#Part 5
virginica=iris[iris$Species=="virginica",]
#make a separate dataframe first with all the virginica data
(mean_petal_length=mean(virginica$Petal.Length))
(min_petal_length=min(virginica$Petal.Length))
(max_petal_length=max(virginica$Petal.Length))
#checked min and max with grep sort in Unix