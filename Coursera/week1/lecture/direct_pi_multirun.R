direct_pi <- function(N) {
    xs <- runif(N, -1.0, 1.0)
    ys <- runif(N, -1.0, 1.0)
    4.0*sum(xs^2 + ys^2 < 1.0)/N
}

n_runs = 100
n_trials = 40000

pis = sapply(rep_len(n_trials, n_runs), direct_pi)

print(pis)
