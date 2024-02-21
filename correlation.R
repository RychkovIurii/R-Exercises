install.packages("Tmisc")
library(Tmisc)
data(quartet)
View(quartet)

quartet %>% 
  group_by(set) %>% 
  summarise(mean(x), sd(x), mean(y), sd(y), cor(x, y))

# sd - standart diviation, cor - correlation

ggplot(quartet, aes(x, y)) + geom_point() + geom_smooth(method = lm, se = FALSE) + facet_wrap(~set)
