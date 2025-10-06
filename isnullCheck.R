d <- NA
is.na(d)      #checks if value is NA(Null)

g <- c(34, NA, 67, NA, 89, 20, NA)
is.na(g)      #gives vector of boolean values, with TRUE if a value is NA
sum(is.na(g)) #FALSE=0, TRUE=1, adds the vector and gives the sum

#0 div by
w <- 0/0
w           #gives output NaN(not a number) instead of 0
is.nan(w)
is.na(w)