 # packages ------

library(tidyverse)

# load data ------ 

data("iris")

# data wrangle ------
 
 PW_steosa <- iris %>% 
   filter(Species == "setosa") %>%
    select(Petal.Width) %>%
    pull()
 
 PW_versicolor <- iris %>% 
   filter(Species == "versicolor") %>%
   select(Petal.Width) %>%
   pull()
 
# shapiro test and histagrams -----
 # P > 0.05 means normal distribution
 # data not normally distributed
 
 shapiro.test(PW_steosa)
 hist(PW_steosa)
 
 shapiro.test(PW_versicolor)
 hist(PW_versicolor)
 
 # compare variance ------
  #
 
 var.test(PW_steosa, PW_versicolor)
 
# t test -------
 
 t.test(PW_steosa, PW_versicolor)
 
 # we found a statistically significant diffence in petal width betwen blah balah  
 
 
 
 

 