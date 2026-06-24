#!/usr/bin/env bash

# NOTE: time (real, user, sys)
# time measures how long a command takes and where time is spent

# real -> total elapsed time (wall clock time)
# user -> CPU time spent executing your code (user space)
# sys  -> CPU time spent inside kernel (system calls)

time sleep 2

# output:
# real    0m2.001s
# user    0m0.000s
# sys     0m0.000s

# explanation:
# real = 2s → actual waiting time
# user = 0  → no CPU work
# sys  = 0  → no kernel work


time ls

# example output:
# real    0m0.005s
# user    0m0.002s
# sys     0m0.003s

# explanation:
# user → time spent executing ls logic
# sys  → time spent in kernel (reading files, disk access)


# IMPORTANT UNDERSTANDING:

# real >= (user + sys)   → always

# why?
# because real includes:
# - waiting time (I/O, sleep, blocking)
# - scheduling delays
# - multi-core effects

# CPU-bound example:

time yes > /dev/null

# here:
# user time will be high
# sys may also be some
# real ≈ user (if single-threaded)


# I/O-bound example:

time cat large_file > /dev/null

# here:
# sys time increases (kernel doing file reads)
# real >> user (waiting for disk)


# MULTI-CORE CASE:

# if program uses multiple cores:
# user + sys can be > real

# because CPU time is summed across cores


# SUMMARY:

# real -> how long YOU wait
# user -> how much CPU your code used
# sys  -> how much CPU kernel used for your program
