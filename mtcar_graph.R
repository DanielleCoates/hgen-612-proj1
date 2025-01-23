# Load necessary libraries
library(ggplot2)

#Extract rownames for independent variable 
mtcars$car_type <- rownames(mtcars)

#Create a dot plot of car types ordered by miles per gallon
ggplot(mtcars, aes(x = reorder(car_type, mpg), y = mpg)) +
  geom_point(size = 2, color = 'blue') +
  theme_minimal() +
  theme(axis.text.y = element_text(color = 'black', size = 8, hjust = 1),
        axis.text.x = element_text(color = 'black', size = 10)) +
  labs(x = "Car Type", y = "Miles Per Gallon (MPG)") + 
  coord_flip()






