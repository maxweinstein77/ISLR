# ============================================================================
# 2.3 Lab: Introduction to R
# ============================================================================

# ============================================================================
# 2.3.1 BASIC COMMANDS
# ============================================================================

# Run a function:
# funcname(input1, input2)

# Create a vector of numbers:
# c()

x <- c(1, 3, 2)
x

y = c(1, 4, 3)

# Hit up arrow multiple times to view previous commands

# Open a new help file window with additional information about function
# ?funcname

# Add two sets of numbers together
length(x)
length(y)
x + y

# Look at a list of all objects
ls()

# Delete any objects we don't want:
rm(x, y)

ls()

# Remove all objects at once:
rm(list = ls())

# Learn about matrix function
?matrix

# Create a simple matrix
x <- matrix(data = c(1, 2, 3, 4), nrow = 2, ncol = 2)
x

# Equivalently
x <- matrix(c(1, 2, 3, 4), 2, 2)
x

# Populate the matrix in order of the rows
matrix(c(1, 2, 3, 4), 2, 2, byrow = TRUE)

# Square root
sqrt(x)

# Raise each element of x to power of two
x^2

# Generate a vector of 50 random normal variables
x <- rnorm(50)
x

# Generate a vector of 50 random normal variables
# centered around 50 with a standard deviation of .1
y <- rnorm(50, mean = 50, sd = .1)
y

# Add x and y together
x + y

# Compute the correlation between x and y
cor(x, y)

# Reproduce exact same set of 50 random numbers
set.seed(1303)
rnorm(50)

# Generate vector of 50 random normal variables
set.seed(3)
y <- rnorm(100)
y

# Mean
mean(y)

# Variance
var(y)

# Standard deviation (two ways)
sqrt(var(y))
sd(y)

# ============================================================================
# 2.3.2 GRAPHICS
# ============================================================================

# Learn more about the plot function
?plot

# Generate a scatterplot of y as a function of x 
x <- rnorm(100)
y <- rnorm(100)
plot(x, y)

# Create a pdf of a generated plot
pdf("Figure.pdf")
plot(x, y, col = "green", xlab = "this is the x-axis",
     ylab = "this is the y-axis",
     main = "Plot of X vs Y")
dev.off()

# Generate a vector of integers between 1 and 10
x <- seq(1, 10)
x

# Generate a sequence of 10 numbers that are equally spaced between 0 and 1
x <- seq(0, 1, length = 10)
x

# Shorthand for seq(1, 10)
x <- 1:10
x

# 
x <- seq(-pi, pi, length = 50)

# Learn more about the contour function
?contour

# Generate a contour plot
# Takes three arguments:
# 1) A vector of the x values (first dimension)
# 2) A vector of the y values (second dimension)
# 3) A matrix whose elements correspond to the z value (third dimension) for 
# each pair of (x, y) coordinates
y <- x
f <- outer(x, y, function(x, y) cos(y) / (1 + x^2))
contour(x, y, f)
contour(x, y, f, nlevels = 50, add = T)
fa <- (f - t(f)) / 2
contour(x, y, fa, nlevels = 15)

# Learn more about the image function
?image

# Generate an image (heatmap - color-coded plot whose colors depend on the 
# z value)
image(x, y, fa)

# Generate a three-dimensional plot (theta and phi control angles at which plot
# is viewed)
persp(x, y, fa)

persp(x, y, fa, theta = 0)
persp(x, y, fa, theta = 10)
persp(x, y, fa, theta = 20)
persp(x, y, fa, theta = 30)
persp(x, y, fa, theta = 40)
persp(x, y, fa, theta = 50)
persp(x, y, fa, theta = 60)
persp(x, y, fa, theta = 70)
persp(x, y, fa, theta = 80)
persp(x, y, fa, theta = 90)
persp(x, y, fa, theta = 100)
persp(x, y, fa, theta = 110)
persp(x, y, fa, theta = 120)
persp(x, y, fa, theta = 130)
persp(x, y, fa, theta = 140)
persp(x, y, fa, theta = 150)
persp(x, y, fa, theta = 160)
persp(x, y, fa, theta = 170)
persp(x, y, fa, theta = 180)
persp(x, y, fa, theta = 190)
persp(x, y, fa, theta = 200)
persp(x, y, fa, theta = 210)
persp(x, y, fa, theta = 220)
persp(x, y, fa, theta = 230)
persp(x, y, fa, theta = 240)
persp(x, y, fa, theta = 250)
persp(x, y, fa, theta = 260)
persp(x, y, fa, theta = 270)
persp(x, y, fa, theta = 280)
persp(x, y, fa, theta = 290)
persp(x, y, fa, theta = 300)
persp(x, y, fa, theta = 310)
persp(x, y, fa, theta = 320)
persp(x, y, fa, theta = 330)
persp(x, y, fa, theta = 340)
persp(x, y, fa, theta = 350)
persp(x, y, fa, theta = 360)
persp(x, y, fa, theta = 370)
persp(x, y, fa, theta = 380)
persp(x, y, fa, theta = 390)
persp(x, y, fa, theta = 400)
persp(x, y, fa, theta = 410)
persp(x, y, fa, theta = 420)
persp(x, y, fa, theta = 430)
persp(x, y, fa, theta = 440)
persp(x, y, fa, theta = 450)

persp(x, y, fa, phi = 0)
persp(x, y, fa, phi = 10)
persp(x, y, fa, phi = 20)
persp(x, y, fa, phi = 30)
persp(x, y, fa, phi = 40)
persp(x, y, fa, phi = 50)
persp(x, y, fa, phi = 60)
persp(x, y, fa, phi = 70)
persp(x, y, fa, phi = 80)
persp(x, y, fa, phi = 90)
persp(x, y, fa, phi = 100)
persp(x, y, fa, phi = 110)
persp(x, y, fa, phi = 120)
persp(x, y, fa, phi = 130)
persp(x, y, fa, phi = 140)
persp(x, y, fa, phi = 150)
persp(x, y, fa, phi = 160)
persp(x, y, fa, phi = 170)
persp(x, y, fa, phi = 180)
persp(x, y, fa, phi = 190)
persp(x, y, fa, phi = 200)
persp(x, y, fa, phi = 210)
persp(x, y, fa, phi = 220)
persp(x, y, fa, phi = 230)
persp(x, y, fa, phi = 240)
persp(x, y, fa, phi = 250)
persp(x, y, fa, phi = 260)
persp(x, y, fa, phi = 270)
persp(x, y, fa, phi = 280)
persp(x, y, fa, phi = 290)
persp(x, y, fa, phi = 300)
persp(x, y, fa, phi = 310)
persp(x, y, fa, phi = 320)
persp(x, y, fa, phi = 330)
persp(x, y, fa, phi = 340)
persp(x, y, fa, phi = 350)
persp(x, y, fa, phi = 360)
persp(x, y, fa, phi = 370)
persp(x, y, fa, phi = 380)
persp(x, y, fa, phi = 390)
persp(x, y, fa, phi = 400)
persp(x, y, fa, phi = 410)
persp(x, y, fa, phi = 420)
persp(x, y, fa, phi = 430)
persp(x, y, fa, phi = 440)
persp(x, y, fa, phi = 450)


persp(x, y, fa, theta = 0,   phi = 0)
persp(x, y, fa, theta = 10,  phi = 10)
persp(x, y, fa, theta = 20,  phi = 20)
persp(x, y, fa, theta = 30,  phi = 30)
persp(x, y, fa, theta = 40,  phi = 40)
persp(x, y, fa, theta = 50,  phi = 50)
persp(x, y, fa, theta = 60,  phi = 60)
persp(x, y, fa, theta = 70,  phi = 70)
persp(x, y, fa, theta = 80,  phi = 80)
persp(x, y, fa, theta = 90,  phi = 90)
persp(x, y, fa, theta = 100, phi = 100)
persp(x, y, fa, theta = 110, phi = 110)
persp(x, y, fa, theta = 120, phi = 120)
persp(x, y, fa, theta = 130, phi = 130)
persp(x, y, fa, theta = 140, phi = 140)
persp(x, y, fa, theta = 150, phi = 150)
persp(x, y, fa, theta = 160, phi = 160)
persp(x, y, fa, theta = 170, phi = 170)
persp(x, y, fa, theta = 180, phi = 180)
persp(x, y, fa, theta = 190, phi = 190)
persp(x, y, fa, theta = 200, phi = 200)
persp(x, y, fa, theta = 210, phi = 210)
persp(x, y, fa, theta = 220, phi = 220)
persp(x, y, fa, theta = 230, phi = 230)
persp(x, y, fa, theta = 240, phi = 240)
persp(x, y, fa, theta = 250, phi = 250)
persp(x, y, fa, theta = 260, phi = 260)
persp(x, y, fa, theta = 270, phi = 270)
persp(x, y, fa, theta = 280, phi = 280)
persp(x, y, fa, theta = 290, phi = 290)
persp(x, y, fa, theta = 300, phi = 300)
persp(x, y, fa, theta = 310, phi = 310)
persp(x, y, fa, theta = 320, phi = 320)
persp(x, y, fa, theta = 330, phi = 330)
persp(x, y, fa, theta = 340, phi = 340)
persp(x, y, fa, theta = 350, phi = 350)
persp(x, y, fa, theta = 360, phi = 360)
persp(x, y, fa, theta = 370, phi = 370)
persp(x, y, fa, theta = 380, phi = 380)
persp(x, y, fa, theta = 390, phi = 390)
persp(x, y, fa, theta = 400, phi = 400)
persp(x, y, fa, theta = 410, phi = 410)
persp(x, y, fa, theta = 420, phi = 420)
persp(x, y, fa, theta = 430, phi = 430)
persp(x, y, fa, theta = 440, phi = 440)
persp(x, y, fa, theta = 450, phi = 450)

# ============================================================================
# 2.3.3 INDEXING DATA
# ============================================================================

# Generate a 4 x 4 matrix consisting of 16 values
A = matrix(1:16, 4, 4)
A

# Capture element in the 2nd row, 3rd column
A[2, 3]

# Capture the elements in column 2 in row 1 and 3 and column 4 in row 1 and 3
A[c(1, 3), c(2, 4)]

# Capture the first 3 rows of columns 2-4
A[1:3, 2:4]

# Capture the first two rows of the 4 x 4 matrix
A[1:2, ]

# Capture the first two columns of the 4 x 4 matrix
A[ , 1:2]

# Capture fisrt row of the 4 x 4 matrix
A[1, ]

# Capture everything in the 4 x 4 matrix excluding the first and third row
A[-c(1, 3), ]

# Capture everything in the 4 x 4 matrix excluding: 
# rows 1 and 3
# columns 1, 3, and 4
A[-c(1, 3), -c(1, 3, 4)]

# Generate number of rows and columns in matrix
dim(A)

# ============================================================================
# 2.3.4 LOADING DATA
# ============================================================================

# Learn more about read.table() function (import)
?read.table()

# Learn more about write.table() (export)
?write.table()

# Import/view Auto dataset from computer (table method)
Auto <- read.table(
  "~/Documents/Coding/STM 2102/Auto.data",
  header = TRUE,
  na.strings = "?"
)

# Import/view Auto dataset from computer (csv method)
Auto <- read.csv(
  "~/Documents/Coding/STM 2102/Auto.data",
  header = TRUE,
  na.strings = "?"
)

# Install & load ISLR package
install.packages("ISLR")
library(ISLR)

# Access Auto dataset directly
Auto

# View first six observations of Auto 
head(Auto)

# View summary statistics of Auto
summary(Auto)

# Number of observations and variables in Auto
dim(Auto)

# See variable types
str(Auto)

# View Auto dataset in spreadsheet form
View(Auto)

# View first four observations
Auto[1:4, ]

# Omit rows with missing observations
Auto = na.omit(Auto)
Auto

# Check the variable names
names(Auto)

# ============================================================================
# 2.3.5 ADDITIONAL GRAPHICAL AND NUMERICAL SUMMARIES
# ============================================================================

# Generate scatterplot: mpg ~ cylinders

# Method one:
plot(Auto$cylinders, Auto$mpg)

# Method two: 
attach(Auto)
plot(cylinders, mpg)

# Convert cylinders from a quantitative to qualitative variable
cylinders = as.factor(cylinders)

# Generate box plot: mpg ~ cylinders
plot(cylinders, mpg)

# Make box plots red
plot(cylinders , mpg , col ="red ")

# Make width of each box isproportional to number of observations in each group
plot(cylinders , mpg , col ="red", varwidth =T)

# Switch graph from vertical to horizontal
plot(cylinders , mpg , col ="red", varwidth =T,horizontal =T)

# Lable the axes
plot(cylinders , mpg , col ="red", varwidth =T, xlab="cylinders ",
     ylab="MPG")

# Generate histogram of mpg
hist(mpg)

# Make histogram red
hist(mpg ,col = 2)

# Breakup histogram into 15 bins
hist(mpg ,col=2, breaks =15)

# Keep only numeric variables
pairs(Auto[, sapply(Auto, is.numeric)])

# Generate scatterplots for subset of variables
pairs(~ mpg + displacement + horsepower + weight + acceleration, data = Auto)

# Plot mpg ~ horsepower 
plot(horsepower, mpg)

# Interactive plot mode - print values (rows) for each clicked point
identify(horsepower, mpg, name)

# View summary statistics of Auto
summary(Auto)

# Summary of mpg variable
summary(mpg)

# Save a record of all the commands typed in the current session
savehistory()

# Load that history in the next time we open a session
loadhistory()