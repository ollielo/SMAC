n_trials = 4000

xs = runif(n_trials, -1.0, 1.0)
ys = runif(n_trials, -1.0, 1.0)

n_hits = sum(xs^2 + ys^2 < 1.0)

print(4*n_hits/n_trials)
