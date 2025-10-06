

library(readxl)
sales <- read_excel("D:/Datasets/Sales.xlsx")

write.csv(sales, "D:/Datasets/Sales.csv")