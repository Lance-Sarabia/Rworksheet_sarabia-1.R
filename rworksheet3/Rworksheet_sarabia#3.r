#1. There is a built-in vector LETTERS contains the uppercase letters of the alphabet
#and letters which contains the lowercase letters of the alphabet.

#LETTERS
LETTERS <- c("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S",
             "T", "U", "V", "W", "X", "Y", "Z")
LETTERS

#letters
letters <-  c("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", 
              "t", "u", "v", "w", "x", "y", "z")
letters
#a. You need to produce a vector that contains the first 11 letters.
LETTERS1 <- LETTERS [1:11]
LETTERS1

#b. Produce a vector that contains the odd numbered letters.
letters1 <- LETTERS[1:26 %% 2 !=0]
letters1

#c. Produce a vector that contains the vowels
LETTERS2 <- LETTERS[c(1, 5, 9, 15, 21)]
LETTERS2

#d. Produce a vector that contains the last 5 lowercase letters
letter2 <- letters [22:26]
letter2

#e. Produce a vector that contains letters between 15 to 24 letters in lowercase.
letter3 <- letters [15:24]
letter3

#2. Create a vector with the average temperatures in April for Tuguegarao City, Manila,
#Iloilo City, Tacloban, Samal Island, and Davao City. The average temperatures in
#Celcius are 42, 39, 34, 34, 30, and 27 degrees.

#a. What is the R code and its result for creating a character vector for the city/town of
#Tuguegarao City, Manila, Iloilo City, Tacloban, Samal Island, and Davao City? Name the
#object as city. The names should follow the same order as in the instruction.
City <- c("Tuguegarao City", "Manila", "Iloilo City", "Tacloban", "Samal Island", "Davao City")
City

#b. The average temperatures in Celcius are 42, 39, 34, 34, 30, and 27 degrees.
#Name the object as temp. Write the R code and its output. Numbers should also follow what
#is in the instruction.
Temp <- c(42, 39, 34, 34, 30, 27)
Temp

#c. Associate the temperature temp with the city by using names() function. What is
#the R code and its results.
names(Temp) <- City
Temp

#2. Create a matrix of one to eight and eleven to fourteen with four columns and three # rows.
#a. What will be the R code for the #2 question and its result?

mat <- matrix(c(1:8, 11:14), nrow = 3, ncol = 4)
mat

#b. Multiply the matrix by two. What is its R code and its result?
mat2 <- mat * 2
mat2

#c. What is the content of row 2? What is its R code?
content <- c(mat[2,1], mat[2,2], mat[2,3], mat[2,4])
content

#d. What will be the R code if you want to display the column 3 and column 4 in row 1 and row 2? What is its output?
content2 <- c(mat[1,3], mat[1,4], mat[2,3], mat[2,4])
content2

#e. What is the R code is you want to display only the columns in 2 and 3, row 3? What is its output?
content3 <- c(mat[3,2], mat[3,3])
content3

#g. Name the rows as isa, dalawa, tatlo and columns as uno, dos, tres, quatro for the matrix that was created in b.‘. What is its R code and corresponding output?
dimnames(mat) <- list(c("isa", "dalawa", "tatlo"),c("uno", "dos", "tres", "quatro"))
mat

#h. From the original matrix you have created in a, reshape the matrix by assigning a new dimension with dim(). New dimensions should have 2 columns and 6 rows. What will be the R code and its output?
dim(mat) <- c(6,2)
mat
#Using Arrays 3. An array contains 1, 2, 3, 6, 7, 8, 9, 0, 3, 4, 5, 1
#a. Create an array for the above numeric values. Each values will be repeated twice What will be the R code if you are to create a three-dimensional array with 4 columns and 2 rows. What will be its output?
arr <- c(1, 2, 3, 6, 7, 8, 9, 0, 3, 4, 5, 1)
arr

rep_arr <- array(rep(arr, 2), dim = c(2,4,3))
rep_arr
#b. How many dimensions do your array have? # It has 3 dimensions

#c. Name the rows as lowercase letters and columns as uppercase letters starting from the A. The array names should be “1st-Dimensional Array”, “2nd-Dimentional Array”, and “3rd-Dimensional Array”. What will be the R codes and its output?
dimnames(rep_arr) - list(letters[1:2], LETTERS[1:4], c("1st-Dimensional Array", "2nd-Dimensional Array", "3rd-Dimensional Array"))
rep_arr
