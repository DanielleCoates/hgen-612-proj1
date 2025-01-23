library(ggplot2)

mtcars$car_type <- rownames(mtcars)

ggplot(mtcars, aes(x = car_type, y = mpg)) +
  geom_bar(stat = "identity") +
  theme(axis.text.x = element_text(angle = 90)) +
  labs(x = "Car Type", y = "Miles Per Gallon (MPG)", title = "MPG by Car Type")



