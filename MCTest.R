source("Fibonacci.R")
params <- c(25, 26, 28, 28, 30, 26, 26, 28, 25, 26)

# running fib in serial
system.time(fibs <- sapply(params, fib))
print(fibs)

# running fib in parallel with multicore
system.time(fibs <- mcFib(params, ncores=10))
print(fibs)

