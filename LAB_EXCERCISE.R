#1........................................................................
orders <- read.csv("D:/Datasets/Orders.csv")
orders

online <-  subset(orders, Payment.Terms == "Online")
online
View(online)


#2........................................................................

write.csv(mtcars, "D:/Datasets/mtcars.csv")

#3........................................................................
diamonds <- read.csv2("D:/Datasets/Diamonds.csv")

premium <- subset(diamonds, cut == "Premium" & color == "J")
premium
View(premium)

#4........................................................................
diamonddf <- read.csv2("D:/Datasets/Diamonds.csv")

ddf <- diamonddf[, c("carat", "color", "depth", "price")]
ddf
View(ddf)

#5........................................................................

mt <- mtcars[c(2,18,30,12),]
View(mt)
