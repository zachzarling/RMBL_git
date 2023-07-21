# packages ------

library(tidyverse)

# load data ------ 

data("iris")

# data wrangle ------

PLxW <- iris %>% 
  filter(Species == "versicolor")


PLxW %>%
  ggplot(aes(Petal.Length, Petal.Width)) +
  geom_point() +
  #geom_abline(slope=0.4158,intercept=-0.3631)
  geom_smooth(method="lm")

# linear model ------

lm(iris$Petal.Width~iris$Petal.Length)

summary(lm(iris$Petal.Width~iris$Petal.Lengt))


# log the slope = 0.4158  R value = 0.9266  P value = 2e-16