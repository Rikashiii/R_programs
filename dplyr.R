library(dplyr)
cars2018 <- read.csv("D:/Datasets/cars2018.csv", stringsAsFactors = TRUE)

s_cars <- arrange(cars2018, Displacement)