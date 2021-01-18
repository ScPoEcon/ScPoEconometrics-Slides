## Task 1 ----

library(dslabs)
gapminder <- gapminder

# Q1
# base R
gapminder$gdppercap <- gapminder$gdp / gapminder$population
# dplyr
library(tidyverse)
gapminder <- gapminder %>%
    mutate(gdppercap = gdp/population)

#Q2
#base R
gapminder[gapminder$year == 2011 & gapminder$gdppercap > 30000 & !is.na(gapminder$gdppercap), "country"]
#dplyr
gapminder %>%
    filter(year == 2011 & gdppercap > 30000 & !is.na(gdppercap)) %>%
    select(country)

#Q3
#base R
gapminder_2015 <- subset(gapminder, year == 2015)
#dplyr
gapminder_2015 <- gapminder %>%
    filter(year == 2015)

#Q4
#base R
nrow(subset(gapminder_2015, infant_mortality > 90))
#dplyr
nrow(gapminder_2015 %>%
         filter(infant_mortality > 90))

#Q5
#base R
mean(gapminder_2015[gapminder_2015$continent == "Africa", "life_expectancy"])
#dplyr
gapminder_2015 %>%
    filter(continent == "Africa") %>%
    summarise(mean_life_exp = mean(life_expectancy))
