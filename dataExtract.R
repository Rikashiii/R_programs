#create matrix of 4x3
#include data from 1 to 12
m <- matrix(c(1:12),4,3)
m

housing <- read.csv("D:/Datasets/Housing.csv")
housing[,1:2]
housing[,c(1,2)]    #extracts first 2 columns

housing[,c(4,6)]    #extracts 4th and 6t column
housing[,-c(4,6)]   #extracts except 4th and 6th column

housing[c(3,5,18,20,450),]    #extracts specific rows

