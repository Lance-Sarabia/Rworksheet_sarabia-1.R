#1.Data(iris).
data <- data.frame(iris)
data

#2.Subset the iris set into 3files per species.
data2 <- subset(data, Species == 'virginica' )
data2

sepal <- iris$Sepal.Length[101:150]
sepal

sepal1 <- iris$Sepal.Width[101:150]
sepal1 

petal1 <- iris$Petal.Length[101:150]
petal1

petal2 <- iris$Petal.Width[101:150]
petal2

virg_mean <- c(sepal, sepal1, petal1, petal2)
virg_mean

#3. Get the total mean for each species.
total_virgmean <-mean(virg_mean)
total_virgmean

#4. Get the mean of each characteristics of the species.
virg <- mean(sepal)
virg

virg1 <- mean(sepal1)
virg1

virg2 <- mean(petal1)
virg2

virg3 <- mean(petal2)
virg3