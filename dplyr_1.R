library(dplyr)
cars2018 <- read.csv("cars2018.csv", stringsAsFactors = TRUE)

#select columns that starts/ends with "___"
str_cars <- select(cars2018, starts_with("M"))
str_cars <- select(cars2018, ends_with("ion"))
str_cars <- select(cars2018, contains("tion"))

#filter function
fil_cars <- filter(cars2018, MPG > 25)
View(fil_cars)

#and &
fil_cars <- filter(cars2018, MPG > 30 & Transmission == "Automatic")
View(fil_cars)

#or |
fil_cars <- filter(cars2018, MPG > 30 | Transmission == "Automatic")
View(fil_cars)

fil_cars <- filter(cars2018, Drive %in% c("All wheel Drive","2-Wheel Drive, Rear"))
View(fil_cars)

#rename (new_name = old_name)
ren_cars <- rename(cars2018, Max_eth = Max.Ethanol)
ren_cars <- rename(cars2018, MIndex = Model.Index )
