#1. The table below shows the data about shoe size and height. Create a data frame.
Shoesize1 <- c(6.5,9.0,8.5,8.5,10.5,7.0,9.5,9.0,13.0,7.5,10.5,8.5,12.0,10.5)
Height1 <- c(66.0,68.0,64.5,65.0,70.0,64.0,70.0,71.0,72.0,64.0,74.5,67.0,71.0,71.0)
Gender1 <- c("F","F","F","F","M","F","F","F","M","F","M","F","M","M")
Shoesize2 <- c(13.0,11.5,8.5,5.0,10.0,6.5,7.5,8.5,10.5,8.5,10.5,11.0,9.0,13.0)
Height2 <- c(77.0,72.0,59.0,62.0,72.0,66.0,64.0,67.0,73.0,69.0,72.0,70.0,69.0,70.0)
Gender2 <- c("M","M","F","F","M","F","F","M","M","F","M","M","M","M")

data1_df <- data.frame(Shoesize1, Height1, Gender1, Shoesize2, Height2, Gender2)
data1_df

# a. Describe the data. - The data shows the different shoesize of male and female with its different heights from 2 data from the dataframe.

# b. Find the mean of shoe size and height of the respondents. Copy the codes and results.
#first data shoesize
data_mean1 <- mean(Shoesize1)
data_mean1
#second data shoesize
data_mean2 <- mean(Shoesize2)
data_mean2

mean_result <- c(data_mean1, data_mean2)
mean_result

# Total shoe size mean.
data_mean <- mean(mean_result)
data_mean

#first data heights
mean_heights <- mean(Height1)
mean_heights
#second data heights
mean_heights2 <- mean(Height2)
mean_heights2

height_result <- c(mean_heights, mean_heights2)
height_result

# Total height mean.
heightmean <- mean(height_result)
heightmean

# c. Is there a relationship between shoe size and height? Why? - Yes, there is a correlation between shoe size and height; larger shoes are preferred by taller individuals. The respondents' shoe size will be tiny if their height is less than 70.0.

# Factors
# 2.Construct character vector months to a factor with factor() and assign the result to factor_months_vector. Print out factor_months_vector and assert that R prints out the factor levels below the actual values.Consider data consisting of the names of months:
months1 <- c("March","April","January","November","January","September","October","September","November","August","January","November","November","February","May","August","July","December","August","August","September","November","February","April")
months1

factor_months <- factor(months1)
factor_months

# 3. Then check the summary() of the months_vector and factor_months_vector. Interpret the results of both vectors. Are they both equally useful in this case?
#yes, they are useful as they count how many repeated data your variable have, and not do it manually.
sum_months1 <- summary(months1)
sum_months1

sum_fact_months <- summary(factor_months)
sum_fact_months

# 4. Create a vector and factor for the table below.
data_fact <- c("East" = '1', "West" = '4', "North" = '3')
data_fact

new_order_data <- factor(data_fact,levels = c("East" = '1',  "West" = '4',  "North" = '3'))
print(new_order_data)

# 5. Enter the data below in Excel with file name = import_march.csv
data_tab <- read.table("/cloud/project/Rworksheet4/import_march.csv", header=TRUE, sep = ",")
data_tab

#b.read the data set. write the code and its result.
tab <- read.csv("/cloud/project/Rworksheet4/import_march.csv")
tab