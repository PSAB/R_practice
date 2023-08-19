# tidyverse essentials

rm(list=ls()) # Remove all objects from R memory


# Install packages
install.packages("tidyverse")
install.packages("dplyr")
install.packages("tidyr")
install.packages("ggplot2")

# Load the packages
library(dplyr)
library(tidyr)
library(ggplot2)

# Inspect mpg data from ggplot
help("mpg")

# Assign mpg dataset to a dataframe
df <- mpg
View(df) # View the dataframe in separate tab
print(df) # View the dataframe in the console
str(df) # Display structure of dataframe
nrow(df) # Number of rows
ncol(df) # Number of columns

# Manipulate variables (columns)

# select() - columns selection

# extract: manufacturer, model, year
select(df, manufacturer, model, year)

# Create sub-table with only those columns
df.car.info <- select(df, manufacturer, model, year)

# Columns that begin with letter "m"
select(df, starts_with(match = "m"))

# Columns that contain the letter "r"
select(df, contains("r"))

# Select columns by column index (position)
select(df, 1:3) 
select(df, c(2, 5, 7)) # Get 2nd, 5th, and 7th cols
select(df, (ncol(df)-2):ncol(df)) # Get last 3 columns

# Rename "manufacturer" and "model" columns
df1 <- rename(df, mnfc = manufacturer, mod = model)

# select columns and rename columns in one call
df1 <- select(df, mnfc = manufacturer, mod = model, everything())












