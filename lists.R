#unnamed list
g <- list(3,5,6,'harsh','#%^$%',434.6453,T,FALSE)
length(g)

#named list #mirror of dictionary
y <- list(i=34, b=TRUE, n=3.45, st='harsh')
length(y)
y$a
y$b
names(y)    #mirror of keys in dictionary

#accessing (indexing starts with 1, not 0 unlike other languages)
y[3]
y[2:4]  #4 is inclusive