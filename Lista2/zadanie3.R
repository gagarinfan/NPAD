P1=0.5
plot(function (x) { P1 * dnorm(x) }, -5, 5)

P2=0.3
plot(function (x) { P2 * dnorm(x, mean = 3, sd=4) }, -5, 5)

P3=0.2
plot(function (x) { P3 * dnorm(x, mean = -2, sd=0.5) }, -5, 5)

plot( function(x) {P1 * dnorm(x)} + {P2 * dnorm(x, mean = 3, sd=4)} + {P3 * dnorm(x, mean = -2, sd=0.5)}, -5, 5)

#niestety nie wiem jak wykonać to funckją anonimową
plot(function (x)
{ sapply(x, FUN = function(v) { P1 * dnorm(v, -v, 1)} + { P2 * dnorm(v, -v, mean = 3, sd = 4)} + { P3 * dnorm(v, -v, mean = -2, sd = 0.5)} ) }, -5, 5
)