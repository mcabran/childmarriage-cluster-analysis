library(tidyverse)
library(ggplot2)

boxplot <- wm %>%
  ggplot(aes(x = country, y = wagem)) + 
  geom_boxplot() + 
  ggtitle("Distributions of ages of first union") + 
  coord_flip()

stat.summ <- ggplot(data = wm) + 
  stat_summary(
    mapping = aes(x = country, y = wagem),
    fun.ymin = min,
    fun.ymax = max,
    fun.y = median) + 
  coord_flip()

density.all <- ggplot(data = wm, aes(age.first.union)) +
  geom_density()

density.country <- ggplot(data = wm, aes(age.first.union)) +
  geom_density(aes(group = country, color = country))
density.country + labs(
  title = "Distribution of ages of first union",
  x = "Years of age",
  y = "Density"
  )

boxplot2 <- wm %>%
  ggplot(aes(x = country, y = age.first.deliv)) + 
  geom_boxplot() + 
  coord_flip()



