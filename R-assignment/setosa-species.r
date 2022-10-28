#1.Data(iris).
data <- data.frame(iris)
data

#2.Subset the iris set into 3files per species.
data1 <- subset(data, Species == 'setosa' )
data1

sep <- iris$Sepal.Length[1:50]
sep

sep1 <- iris$Sepal.Width[1:50]
sep1

pet1 <- iris$Petal.Length[1:50]
pet1

pet2 <- iris$Petal.Width[1:50]
pet2

ttlmn <- c(sep, sep1, pet1, pet2)
ttlmn

#3. Get the total mean for each species.
totalmean <- mean(ttlmn)
totalmean

#4. Get the mean of each characteristics of the species.
set1 <- mean(sep)
set1

set2 <- mean(sep1)
set2

set3 <- mean(pet1)
set3

set4 <- mean(pet2)
set4