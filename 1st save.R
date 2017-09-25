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

