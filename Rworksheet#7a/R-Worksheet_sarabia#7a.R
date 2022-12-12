Student <- seq(1:10)
Pre_Test <- c(55,54,47,57,51,61,57,54,63,58)
Post_Test <- c(61,60,56,63,56,63,59,56,62,61)

tblDF <- data.frame(Student,Pre_Test,Post_Test)
tblDF

#a. Compute the descriptive statistics using different packages (Hmisc and pastecs).
#Write the codes and its result.

library(Hmisc)
library(pastecs)

#Hmisc
dsc <- describe(tblDF)
dsc 

#Pastecs
st_dsc <- stat.desc(tblDF)
st_dsc

#2. The Department of Agriculture was studying the effects of several levels of a
#fertilizer on the growth of a plant. For some analyses, it might be useful to convert
#the fertilizer levels to an ordered factor.

# The data were 10,10,10, 20,20,50,10,20,10,50,20,50,20,10.

data1 <- c(10,10,10,20,20,50,10,
          20,10,50,20,50,20,10)
data1

#a. Write the codes and describe the result.
#ans- its levels differ from 10 to 20 to 50
datafct <- factor(data1, ordered = TRUE)
datafct

#3. Abdul Hassan, president of Floor Coverings Unlimited, has asked you to study
#the exercise levels undertaken by 10 num3 were “l”, “n”, “n”, “i”, “l” ,
#“l”, “n”, “n”, “i”, “l” ; n=none, l=light, i=intense

data2 <- c("l","n","n","i","l","l","n","n","i","l")
data2

#a. What is the best way to represent this in R?
#ans - presenting the data in Data frame
data2DF <- data.frame(data2)
data2DF

#4.Sample of 30 tax accountants from all the states and territories of Australia and
#their individual state of origin is specified by a character vector of state mnemonics
#as:

state_data <- c("tas", "sa", "qld", "nsw", "nsw", "nt", "wa", "wa", "qld",
           "vic", "nsw", "vic", "qld", "qld", "sa", "tas", "sa", "nt",
           "wa", "vic", "qld", "nsw", "nsw", "wa", "sa", "act", "nsw",
           "vic", "vic", "act")
state_data 

#a. Apply the factor function and factor level. Describe the results.

#factor function and factor level
statefct <- factor(state_data)
statefct

#Getting factor level of states
statelvl <- levels(statefct)
statelvl

#5. From #4 - continuation:

#• Suppose we have the incomes of the same tax accountants in another vector (insuitably large units of money)

income <- c(60, 49, 40, 61, 64, 60, 59, 54,
             62, 69, 70, 42, 56, 61, 61, 61, 58, 51, 48,
             65, 49, 49, 41, 48, 52, 46, 59, 46, 58, 43)
income

#a. Calculate the sample mean income for each state we can now use the special
#function tapply():

incomettl <- tapply(income, state_data, mean)
incomettl

#b. Copy the results and interpret.
incomettl
#ans- the state was factor out and was applied for the tapply function in order for the income 
#to be arranged corresponding in each state.

#6.Calculate the standard errors of the state income means (refer again to number 3)

#a. What is the standard error? Write the codes.

datalng <- length(incomettl)
datalng

datasd <- sd(incomettl)
datasd

data3 <- datasd/sqrt(datalng)
data3


#b. Interpret the result.
#the data was summarize in length as it shows it has a 8 observation
#and data was also summarize by getting its standard deviation along with its standard of errors.

#7. Use the titanic dataset.
data(Titanic)
titanicDF <- data.frame(Titanic)
titanicDF

#a. subset the titatic dataset of those who survived and not survived. Show the
#codes and its result.

survive_data <- subset(titanicDF, Survived == "Yes")
survive_data

died_data <- subset(titanicDF, Survived == "No")
died_data

#8. The data sets are about the breast cancer Wisconsin. The samples arrive periodically as Dr. Wolberg reports his clinical cases. The database therefore reflects this
#chronological grouping of the data. You can create this dataset in Microsoft Excel.

#a. describe what is the dataset all about.
#ans - it is a data for breast cancer patients, it was categorized in different types of breasts cancer and how serious it's state, the number of patients was also organized under the different category of breast cancer

#b. Import the data from MS Excel. Copy the codes.

library("readxl")

data4 <- read_excel("C:/ANOTHER/NEECHAN/PracticeGit/New Projet/Individual Project #1, Sarabio/lance/Breast_Cancer.xlsx") 

data4
#c. Compute the descriptive statistics using different packages. Find the values of:
#c.1 Standard error of the mean for clump thickness.

clm_lng <- length(data4$`CL. thickness`)
clm_lng

clm_sd <- sd(data4$`CL. thickness`)
clm_sd

clm_se <- clm_sd/sqrt(data4$`CL. thickness`)
clm_se

#c.2 Coefficient of variability for Marginal Adhesion.

data5 <- sd(data4$`Marg. Adhesion`) / mean(data4$`Marg. Adhesion`) * 100
data5

#c.3 Number of null values of Bare Nuclei.

numNV <- subset(data4,`Bare. Nuclei` == "NA")
numNV

#c.4 Mean and standard deviation for Bland Chromatin

mn <- mean(data4$`Bl. Cromatin`)
mn

sdBC <- sd(data4$`Bl. Cromatin`)
sdBC

#c.5 Confidence interval of the mean for Uniformity of Cell Shape

#Calculate the mean
mnCS <- mean(data4$`Cell Shape`)
mnCS

#Calculate the standard error of the mean
se_lng <- length(data4$`Cell Shape`)
se_lng

se_sd <- sd(data4$`Cell Shape`)
se_sd

Cellshape_se <- se_sd/sqrt(se_lng)
Cellshape_se

#Find the t-score that corresponds to the confidence level
ts = 0.05
ts

ts_se = se_lng - 1
ts_se

tscore = qt(p=ts/2, df=ts_se,lower.tail=F)
tscore

#Constructing the confidence interval

CI <- tscore * Cellshape_se
CI

#Lower
CI_diff <- mnCS - CI
CI_diff

#Upper
sumCI <- mnCS + CI
sumCI

data6 <- c(CI_diff, sumCI)
data6

#d. How many attributes?
att <- attributes(data4)
att

#e. Find the percentage of respondents who are malignant. Interpret the results.
per_res <- subset(data4, Class == "malignant")
per_res

#ans- 18 respondents are malignant in total of 49 respondents. Getting the percentage 18 / 49 * 100 / 49 * 100

#There 36% of respondents who are malignant.

#9. Export the data abalone to the Microsoft excel file. Copy the codes.

library("AppliedPredictiveModeling")

data(abalone)
View(abalone)
head(abalone)
summary(abalone)

#Exporting the data abalone to the Microsoft excel file

library(xlsx)

data8 <- write.xlsx("abalone","C:/ANOTHER/NEECHAN/PracticeGit/New Projet/Individual Project #1, Sarabio/lance/abalone.xlsx") 
data8