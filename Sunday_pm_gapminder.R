# This is a script to explore the gapminder dataset using R
# Malini
# 4/19/15

# Install dplyr package and dependencies
#install.packages("dplyr", dependencies = TRUE)

#Load dplyr library into working environment
library("dplyr")


# Read in data as tab-delimited

gap.in <- read.table("output/combined_gapMinder.tsv", sep = "\t", header=TRUE)

gap.in %>%
filter(pop > 1500000) %>%
  select(country, year, pop) %>%
  group_by(country) %>%
  summarize(min = min(pop)) -> data.out


# Calculate the mean population per continent across all years prior to 1990

gap.in %>%
  filter(year < 1990) %>%
  group_by(continent) %>%
  summarize(mean = mean(pop))
data(iris)
attach(iris)
#install.packages("tidyr", dependencies = TRUE)
library("tidyr")
  
# Turn iris dataset from wide into long format
gather(iris, "Measurements", "value", 1:4) -> iris.long




