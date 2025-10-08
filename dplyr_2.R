library(dplyr)
cars2018 <- read.csv("cars2018.csv", stringsAsFactors = TRUE)

#summarize
summarise(cars2018, mu_price = mean(MPG),
          sd_price=sd(MPG),
          med_cyl = median(Cylinders))

grp_t <- group_by(cars2018, Transmission)
summarise(grp_t, mu_price = mean(MPG),
          sd_price=sd(MPG),
          med_cyl = median(Cylinders))

ss_cars <- filter(cars2018, Transmission=="Manual")
ss_cars <- select(filter(cars2018, Transmission=="Manual"),
                  Model, Displacement, MPG, Transmission)
View(ss_cars)

