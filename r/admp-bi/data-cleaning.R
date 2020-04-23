# install all the required packages as a the first step 
install.packages('dplyr')
install.packages('tidyverse')
install.packages('plyr')

# include external libraries if not present
library(dplyr)
library(tidyverse)
library(dplyr)

# declare variables 
path = "C://SHU/ADMP/Assessment_02/londoncrimedw_project/input_csv/"
street_file <- paste(path, "street_london.csv", sep="")

# read street csv file
street = read.csv(street_file)
street <- unique(street)

# view street csv file in a proper format
View(street)

# ####################################### Find Duplicates ###############################################3
# unique_street = unique(street)
duplicate_Crime_IDs <- data.frame(table(street$Crime_ID))
View(duplicate_Crime_IDs[duplicate_Crime_IDs$Freq > 1,])

View(count(street,Last_outcome_category))

outcometype_counts<-table(street$Last_outcome_category, useNA = "ifany")
pie(outcometype_counts, main="Outcome category type")
barplot(outcometype_counts, main="Outcome category type", xlab='Counts', yylab = 'Outcome type', horiz = FALSE)

# View the first 6 rows of data
head(street)

# View the last 6 rows of data
tail(street)

# View a condensed summary of the data
str(street)

# Check the class of street
class(street)

# Check the dimensions of street
dim(street)

# View the column names of street
names(street) # colnames(street)

# ******* Viewing the structure of your data **********
# Check the structure of street
str(street)



# Check the structure of street, the dplyr way. A function from dplyr is a slightly cleaner alternative to str()
glimpse(street)

# summary() command to get a better feel for how your data are distributed, which may reveal unusual or extreme values, unexpected missing data, etc. For numeric variables, this means looking at means, quartiles (including the median), and extreme values. For character or factor variables, you may be curious about the number of times each value appears in the data (i.e. counts), which summary() also reveals.
# View a summary of street
summary(street)

# ******************* Looking at your data ******************************
# Although you look the summary of the data but there is no alternative to 
# the looking at your data.
# ########################################################################
# Print street to the console
street

# View the first 6 rows
head(street)

# View the first 15 rows
head(street, n=15)

# View the last 6 rows
tail(street)

# View the last 10 rows
tail(street, n=10)

# *********************** Visualizing your data **************************************
# There are many ways to visualize data. Since this is not a course about data visualization, we will only touch on two types of plots that may be useful for quickly identifying extreme or suspicious values in your data: histograms and scatter plots.
# A histogram, created with the hist() function, takes a vector (i.e. column) of data, breaks it up into intervals, then plots as a vertical bar the number of instances within each interval. A scatter plot, created with the plot() function, takes two vectors (i.e. columns) of data and plots them as a series of (x, y) coordinates on a two-dimensional plane.
hist(street$Month)
plot(street$Month, street$LSOA_name)

sort(table(street$Month), decreasing = TRUE)
street %>% select(Month) %>% table %>% sort(decreasing = TRUE)
# ################################################################


View(street)
View(count(street, Month))

table(street$Month)

counts<-table(street$Month, useNA = "ifany")
counts
names(counts)[is.na(names(counts))]
barplot(counts, main="Month Distribution", xlab='Counts', yylab = 'Month', horiz = TRUE)
pie(counts, main="Month")

