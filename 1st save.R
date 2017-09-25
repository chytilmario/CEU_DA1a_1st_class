## #############################################################################
## basic math operations
## #############################################################################

1 + 3
3*2
3^2

## constants

pi
"pi"
'pi'
letters
LETTERS

str(letters)
letters[1]

month.name
month.abb

## how to get help
?pi
apropos('month')

## variables

x = 4
x <- 4
x

x/2
x^2

## TODO compute the square root of 4
x^0.5
sqrt(x)

## #############################################################################
## functions
## #############################################################################

sqrt(x)
sqrt(x = x)
x = sin(pi / 2)

## random numbers from uniform distribution (and NOT "run if")

set.seed(123)
runif(2)
help(runif)

set.seed(123)
runif(2)

set.seed(123)
runif(2)

set.seed(123)
runif(2)

set.seed(123)
runif(2)

round(runif(2))

set.seed(123)
runif(2)
set.seed(123)
round(runif(2))
round(runif(2), 1)
help(round)
help(rnorm)
hist(rnorm(5000))
cumsum(rnorm(1000))

## define custom functions
f <- function(x) 2 * x + 1
f(5)
f(pi)

## combine values into a vector

c(1, 2, 3, 4, 5)
f(x)
x <- c(1, 2, 3, 4, 5)
f(x)

letters[c(1, 2, 3, 4, 5)]
letters[1:5]

1:5
seq(1,5)
?seq
seq(1,5, 0.1)

## now we store a sequence from 1 to 5 by 0.1 as x and plot f(x)
x <- seq(1, 5, 0.1)
plot(x, f(x))
plot(x, f(x), type = 'l')

## adding a title and a grid to the plot
plot(x, f(x), type = 'l', xlab = '', main = '2x+1')
grid()

## TODO draw a sine wave
x <- seq(0, pi * 2, 0.1)
plot(x, sin(x), type = 'l')
str(x)
print(x)
2*pi
## a simpler way for plotting functions
curve(f)
?curve

curve(2*x + 1, from = 0, to = 50)
curve(x + 1, add = TRUE, col = 'red')
print(x)

## TODO draw a sine wave with curve
curve(sin, from = 0, to = 2*pi, col = "red")
curve(sin, from = x, to = 2*pi*x, col = "blue")

## #############################################################################
## simulate Brownian motion / random walk in 1D
## #############################################################################

## first steps
round(runif(5))

## we transform the previously generated floating random numbers between 0 and 1
## to either -1 or 1
round(runif(5))*2 - 1

## we compute the cumulative sum to identify the actual value for each iteration
cumsum(round(runif(25))*2 - 1)
plot(cumsum(round(runif(25))*2 - 1), type = 's')
?plot

## set the random number generator to a specific state for reproducibility
set.seed(42)
plot(cumsum(round(runif(25))*2 - 1), type = 's')

## a much simpler solution for the above
plot(cumsum(sample(c(-1, 1), 25, replace = TRUE)), type = 's')
?sample
sample(5, 25, replace = TRUE)
sample(c(-1, 1), 25, replace = TRUE)

## #############################################################################
## from vectors to data frames
## #############################################################################

## custom vectors -> combine values into vector
h <- c(174, 170, 160)
w <- c(90, 80, 70)

## render a scatterplot
plot(h, w, main = "Demo", xlab = 'Height', ylab = 'Weight')

## compute the correlation coefficient
cor(w, h)

## build a basic linear model
lm(w ~ h)
fit <- lm(w ~ h)
summary(fit)
?fit
?lm
str(fit)

56 * fit$coefficients[2] + fit$coefficients[1]
56 * 1.3462 + -146.1538
predict(fit, list(h = 56))
?predict
predict(fit, h = 56)

## plot this model
plot(h, w, main = "Demo", xlab = 'Height', ylab = 'Weight')
abline(fit, col = 'red')

## intro to data.frame object type
df <- data.frame(weight = w, height = h)
df

plot(df)
cor(df)
lm(df)

str(df)
