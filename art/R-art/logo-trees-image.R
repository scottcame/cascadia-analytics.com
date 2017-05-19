library(tibble)
library(ggplot2)
set.seed(1)
dd <- c(rnorm(n=4, mean = .2, sd=.05), rnorm(n=100, mean = .5, sd=.2))
df <- tibble(x=1:104, trees=abs(dd))
p <- ggplot(data=df) + geom_bar(aes(x=x, y=trees), stat='identity', color='#008000', fill='#008000') +
  theme_void() + theme(
    panel.background = element_rect(fill = "transparent",colour = NA),
    panel.grid.minor = element_blank(), 
    panel.grid.major = element_blank(),
    plot.background = element_rect(fill = "transparent",colour = NA)
  )

png('~/Documents/trees.png',width=535,height=50,units="px",bg = "transparent")
print(p)
dev.off()