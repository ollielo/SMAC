n_trials <- 4000
n_hits <- 0
delta <- 0.1
x <- 1.0
y <- 1.0

for (i in 0:n_trials) {
    del_x <- runif(1, -delta, delta)
    del_y <- runif(1, -delta, delta)
    if (abs(x + del_x) < 1.0 && abs(y + del_y) < 1.0) {
        x <- x + del_x
        y <- y + del_y
    }
    if (x^2 + y^2 < 1.0)
        n_hits = n_hits + 1
}

print(4.0*n_hits/n_trials)