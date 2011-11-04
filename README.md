Simple examples of how to use "multicore" and "SNOW" packages on the JAX
rockhopper cluster.

Files:
======

* MCTest.bash: the main entry point for running the multicore example. Use `qsub MCTest.bash` to run this on the cluster. To run MCTest on your desktop just use `source("MCTest.R", echo=T)` from the R prompt.
* MCTest.R: the top-level R code for the multicore test
* SNOWTest.bash: the main entry point for running the SNOW example. Use `qsub SNOWTest.bash` to run this.
* SNOWTest.R: the top-level R code for the SNOW test
* Fibonacci.R: the test functions

Suggestions:
============

When to use multicore package:

* you want the simplest solution (SNOW takes a bit more configuration)
* large amounts of data must be transferred to parallel workers (eg: huge matrices)
* a single node (or workstation) is good enough

When to use SNOW:

* when you need to use more than one node on the cluster (because of memory, CPU... whatever)

