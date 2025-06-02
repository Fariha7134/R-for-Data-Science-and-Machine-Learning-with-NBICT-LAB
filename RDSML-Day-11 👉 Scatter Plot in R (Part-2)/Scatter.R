# install.packages("ggplot2")
library(ggplot2)

dataset = mtcars

# Generating a basic scatter plot
ggplot(dataset, aes(x = wt, y = mpg)) +
  geom_point()

# Changing the point size and shape
ggplot(dataset, aes(x = wt, y = mpg)) +
  geom_point(size=1, shape=18)

# Adding the regression line
ggplot(dataset, aes(x = wt, y = mpg)) +
  geom_point(size=1, shape=18) +
geom_smooth(method = lm)
# shadow area is called confidence interval

# Removing the confidence interval
ggplot(dataset, aes(x = wt, y = mpg)) +
  geom_point() +
  geom_smooth(method = lm, se = FALSE)

# Loess method (Locally Estimated Scatter plot Smoothing) Create line for neighboring scatter dot
# Loess line straight means data are more linear
ggplot(dataset, aes(x = wt, y = mpg)) +
  geom_point() +
  geom_smooth()

# Change the line type and color
ggplot(dataset, aes(x = wt, y = mpg)) +
  geom_point(size=1, shape=18) +
  geom_smooth(method = lm, linetype = "dashed",
              color = "darkblue")

# Changing the confidence interval color
ggplot(dataset, aes(x = wt, y = mpg)) +
  geom_point(size=1, shape=18) +
  geom_smooth(method = lm, linetype = "dashed",
              color = "darkred", fill = "blue")

# Scatter plots with multiple groups
# Converting the cyl (cylinder) column from a numeric to factor variable
dataset$cyl = as.factor(dataset$cyl)

# Changing the point shapes by the levels of cyl
ggplot(dataset, aes(x = wt, y = mpg, shape = cyl)) +
  geom_point()

# Changing point shapes and colors
ggplot(dataset, aes(x = wt, y = mpg, shape = cyl, color = cyl)) +
  geom_point()

# Changing point shapes, colors and sizes
ggplot(dataset, aes(x = wt, y = mpg, shape = cyl, color = cyl, size = cyl)) +
  geom_point()




