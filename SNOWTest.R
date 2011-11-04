source("Fibonacci.R")
params <- c(25, 26, 28, 28, 30, 26, 26, 28, 25, 26)

# run fib in serial
system.time(fibs <- sapply(params, fib))
print(fibs)

# run fib in parallel with SNOW's parSapply. This works the same as sapply
# except we need to provide a cluster parameter
cluster <- getMPIcluster()
clusterEvalQ(cluster, source("Fibonacci.R"))
system.time(fibs <- parSapply(
    cluster,    # the cluster object
    params,     # the numbers we're applying fib to
    fib))       # the function to apply
print(fibs)

# running fib in parallel mixing SNOW and multicore, we can do this using
# SNOW's parLapply to apply mcFib on two vectors
splitParams <- list(params[1 : 5], params[6 : 10])
system.time(fibs <- parLapply(
    cluster,        # the cluster object
    splitParams,    # the list of vectors we're applying mcFib to
    mcFib,          # the function we're applying
    5))             # this param is supplied to mcFib's ncores
print(fibs)
print(unlist(fibs))
