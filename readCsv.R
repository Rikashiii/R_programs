#read csv
#will use forward slash / for address
#as windows uses backwash slash \ by default 

housing <- read.csv("D:/Datasets/Housing.csv", stringsAsFactors = TRUE)
str(housing)  #gives internal structure
#class = dataframe

bollywood <- read.csv("D:/Datasets/Bollywood_2015.csv")
bollywood

#tell that csv has no Headers
bollywood2 <- read.csv("D:/Datasets/Bollywood_2015_2.csv", stringsAsFactors = T) 
bollywood2
#set column names 
colnames(bollywood2) <- c("Movie", "Collection","Budget","Hit/Flop")
bollywood2
