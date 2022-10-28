#1.Data(iris).
data <- data.frame(iris)
data

#2.Subset the iris set into 3files per species.
new_data <- subset(data, Species == 'versicolor' )
new_data

leng <- iris$Sepal.Length[51:100]
leng

leng2 <- iris$Sepal.Width[51:100]
leng2

petal <- iris$Petal.Length[51:100]
petal

petal1 <- iris$Petal.Width[51:100]
petal1

means <- c(leng, leng2,petal1, petal)
means

#3. Get the total mean for each species.
total_means <- mean(means)
total_means

#4. Get the mean of each characteristics of the species.
vers <- mean(leng)
vers

vers2 <- mean(leng2)
vers2

vers3 <- mean(petal)
vers3

vers4 <- mean(petal1)
vers4