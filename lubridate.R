setwd("D:/Datasets/")
library(lubridate)
orders <- read.csv("Orders.csv")

str(orders)
orders$Order.Date <- dmy(orders$Order.Date)
str(orders)