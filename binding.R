a <- c(9,3,4)
b <- c(30, 20, 50, 22, 99)

#row binding
rb <- rbind(a, b)
rb

#column binding
cb <- cbind(a, b)
cb

# -> shorter ones repeat itself if the two vectors are of unequal length

a <- c(3,4,5,6,78,45,4,65)
c <- c(24,30,52,46)
cb <- cbind(a, c)
#does not give warning if length of a and c are multiples of each other
