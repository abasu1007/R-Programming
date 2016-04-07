## That's not the expression I expected but it works.

## I've executed the correct expression in case the result is needed in an upcoming question.

## Keep up the great work!

#show 4 different calls to t.test
#display as 4 long array
rbind(
  mn + c(-1, 1) * qt(.975, n-1) * s / sqrt(n),
  as.vector(t.test(difference)$conf.int),
  as.vector(t.test(g2, g1, paired = TRUE)$conf.int),
  as.vector(t.test(extra ~ I(relevel(group, 2)), paired = TRUE, data = sleep)$conf.int)
)
