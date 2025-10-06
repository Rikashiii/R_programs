#Views
housing <- read.csv("D:/Datasets/Housing.csv")

#conditional statement (where driveway is yes)
ss_house <- subset(housing, driveway == "yes")
View(ss_house)

ss_house <- subset(housing, driveway == "yes" & price > 45000)
View(ss_house)

ss_house <- subset(housing, driveway == "yes" & price > 45000,
                   select = c(price, bedrooms, recroom))    #select the columns to display
View(ss_house)
