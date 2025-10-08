library(dplyr)
cars2018 <- read.csv("cars2018.csv", stringsAsFactors = TRUE)

#####chaining
sum_cars <- summarise(select(filter(cars2018, Transmission=="Manual"),
                             Model, Displacement, MPG, Transmission),
                      mu_disp = mean(Displacement), mu_MPG=mean(MPG))
View(sum_cars)

#OR
# 5>% Magrittr / Chainline / pipeline (SHORTCUT- Ctrl+Shift+M [RStudio])
cars2018 %>%
  filter(Transmission=="Manual") %>%
  select(Model, Displacement, MPG, Transmission) %>% 
  summarise(mu_disp = mean(Displacement), mu_MPG=mean(MPG))

#OR
cars2018 |>
  filter(Transmission=="Manual") |>
  select(Model, Displacement, MPG, Transmission) |> 
  summarise(mu_disp = mean(Displacement), mu_MPG=mean(MPG))