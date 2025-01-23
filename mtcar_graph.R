library(ggplot2)

mtcars$car_type <- rownames(mtcars)

ggplot(mtcars, aes(x = reorder(car_type, mpg), y = mpg)) +
  geom_point(size = 2, color = 'blue') +
  theme_minimal() +
  theme(axis.text.y = element_text(color = 'black', size = 8, hjust = 1),
        axis.text.x = element_text(color = 'black', size = 10)) +
  labs(x = "Car Type", y = "Miles Per Gallon (MPG)") + 
  coord_flip()





