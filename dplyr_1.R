library(dplyr)
cars2018 <- read.csv("cars2018.csv", stringsAsFactors = TRUE)

#select columns that starts/ends with "___"
str_cars <- select(cars2018, starts_with("M"))
str_cars <- select(cars2018, ends_with("ion"))
str_cars <- select(cars2018, contains("tion"))