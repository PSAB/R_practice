# load gapminder data from a csv on your computer
gap5yr <- read.csv(file = 'r-docker-tutorial/gapminder-FiveYearData.csv')

# load ggplot library
library(ggplot2)

# plot GDP against  life expectancy
qplot(gap5yr$lifeExp, gap5yr$gdpPercap)

# save the plot
ggsave(filename = 'r-docker-tutorial/GDP_LifeExp.pdf')