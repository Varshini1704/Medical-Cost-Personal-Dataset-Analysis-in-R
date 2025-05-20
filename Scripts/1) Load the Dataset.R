# LOAD LIBRARIES

library(tidyverse) 
#Collection of packages for data cleaning, reading and manipulation.

library(ggplot2)
#Create beautiful, layered plots for data visualization and analysis.

library(corrplot)
#Generates graphical displays of correlation matrices for numeric variables.

library(caret)
#Simplifies machine learning workflows: training, tuning, splitting, evaluating models.

# LOAD DATASET

df <- read.csv(file.choose(),header=TRUE)
#file.choose() - Opens a file dialog window so you can manually select a file from your system.
#header = TRUE - Tells R that the first row of the CSV file contains column names (headers).

head(df)
#Displays the first 6 rows of the dataset to give you a quick preview of the data structure and values.