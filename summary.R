housing <- read.csv("D:/Datasets/Housing.csv", stringsAsFactors = T)
summary(housing$price)

s <- seq(2, 40, 2)
summary(s)

summary(housing$recroom)
summary(housing)

summary(housing$price)

attach(housing)
summary(price)
table(recroom)

detach(housing)

summary(price)
summary(bedrooms)
summary(lotsize)
table(recroom)