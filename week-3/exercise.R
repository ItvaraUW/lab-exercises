iris_df <- data.frame(iris)
View(iris_df)

# Select all values of data frame for Sepal.length
View(iris_df$Sepal.Length)

# Select only rows of Virginica flowers

virginica_iris <- iris_df[iris_df$Species == "virginica",]

# Select only the sepal legnth of the Virginica flowers
virginica_iris[, "Sepal.Length"]
virginica_iris$Sepal.Length

# Select rows where Petal.Length > 4.0
iris_df[iris_df$Petal.Length > 4.0, ]

# Add a column to the dataframe indicating whether Petal.Length > 4.0
iris_df$if_petal_greater_than_4 <- iris_df$Petal.Length > 4.0

# Find the species type of the flower that has the longest Sepal length
max(iris_df$Sepal.Length)
iris_df[iris_df$Sepal.Length == max(iris_df$Sepal.Length), "Species"]

# Select rows where species type is 'setosa' and Sepal.Width > 3.0
setosa_df <- iris_df[iris_df$Species == "setosa",]
setosa_df[setosa_df$Sepal.Width > 3.0, ]

# One line solution
View(iris[((iris$Species == "setosa") & (iris$Sepal.Width > 3.0)), ])
