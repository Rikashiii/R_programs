library(dplyr)
cars2018 <- read.csv("D:/Datasets/cars2018.csv", stringsAsFactors = TRUE)

#sorting on the column name
s_cars <- arrange(cars2018, Displacement)
s_cars <- arrange(cars2018, Transmission )

#sorting column inside column
items <- read.csv("Items.csv")
s_items <- arrange(items, Item.Type, Price)
#descending
s_items <- arrange(items, Item.Type, desc(Price))

sel_cars <- select(cars2018, Model.Index, Gears, Aspiration)

#select Model to Transmission column select
sel_cars <- select(cars2018, Model:Transmission)

#select column1 to column6 select
sel_cars <- select(cars2018, 1:6)

#select columns except column1 to column6
sel_cars <- select(cars2018, -c(1:6))

#select columns except Gear column
sel_cars <- select(cars2018, -Gears)

#select columns except Model to Transmission
sel_cars <- select(cars2018, -c(Model:Transmission))
