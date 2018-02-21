data <- read.csv("data-science/R-programming/Mispriced-Diamonds.csv")

ggplot(data = data,
       aes(x = carat, y= price, color = clarity)) +
geom_smooth()
x