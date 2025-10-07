#if else

p <- 100000
r <- 10
t <- 32
si <- p*r*t/100
print(si)

if (si > 50000){
  tax <- ( si - 50000 )*0.2
} else{
  tax <- 0
}
print(tax)