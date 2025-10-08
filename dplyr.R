library(dplyr)
cars2018 <- read.csv("D:/Datasets/cars2018.csv", stringsAsFactors = TRUE)

#sorting on the column name
s_cars <- arrange(cars2018, Displacement)
s_cars <- arrange(cars2018, Transmission )

#sorting column insid column
items <- read.csv("Items.csv")
s_items <- arrange(items, Item.Type, Price)
#descending
s_items <- arrange(items, Item.Type, desc(Price))
