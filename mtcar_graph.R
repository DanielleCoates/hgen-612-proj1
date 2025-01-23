library(ggplot2)

mtcars$car_type <- rownames(mtcars)

ggplot(mtcars, aes(x = reorder(car_type, mpg), y = mpg)) +
  geom_point(size = 2) +
  theme_minimal() +
  theme(axis.text.y = element_text(size = 7, hjust = 1)) +
  labs(x = "Car Type", y = "Miles Per Gallon (MPG)", title = "MPG by Car Type") + 
  coord_flip()




