library("multicore")

# plain old fibonacci function
fib <- function(n) {
    if(n <= 1) {
        n
    } else {
        fib(n - 1) + fib(n - 2)
    }
}

# multicore fibonacci function that takes a core count
mcFib <- function(ns, ncores=1) {
    ns <- as.list(ns)
    results <- mclapply(ns, fib, mc.cores=ncores)
    unlist(results)
}

