library(tidyverse)
library(gapminder)

# write gapminder in disk
write.csv(gapminder, './gapminder.csv') # write gapminder in disk

# calculate mean lifeExp per continent
gapminder_sum <- gapminder %>% 
  group_by(continent) %>% 
  summarise(ave_lifeExp = mean(lifeExp))

# write gapminder_sum in disk
write.csv(gapminder_sum, './gapminder_sum.csv')

# plot for gapminder_sum
gapminder_sum %>% 
  ggplot(aes(continent, ave_lifeExp)) +
  geom_point() +
  theme_bw()