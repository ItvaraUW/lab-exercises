## Part 1: Debugging

my_num <- 6
initials <- "?. ?."

my_vector <- c(my_num, initials)

# run ?sum to get more info
vector_sum <- sum(my_vector)

# Describe why this doesn't work: 
# All arguments must be numeric or complex or logic vectors, a string is not one of those.

install.packages("stringr")

my_line <- "Hey, hey, this is the library"

print(str_length(my_line))

# Describe why this doesn't work: 
# Used str_length() instead of nchar()

said_the_famous <- paste(my_line, " - ", initial)

# Describe why this doesn't work: 
# The argument is "initials" not "initial"


## Part 2 - Vector and function practice

# Make a vector and use typeof to check what type R considers it to be
new_vector <- c(nchar(my_line), my_line)

# Write a function `compare_length` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
compare_length <- function(vector1, vector2) {
  paste("The difference in lengths is ", length(vector1) - length(vector2))
}

# Pass two vectors of different length to your `compare_length` function
compare_length(new_vector, my_vector)

# Write a function `describe_difference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
describe_difference <- function(vector1, vector2) {
  difference <- length(vector1) - length(vector2)
  if (difference > 0)
    return(paste("Your first vector is longer by ", difference, " elements"))
  else {
    return(paste("your second vector is longer by ", difference * -1, " elements"))
  }
}

# Pass two vectors to your `describe_difference` function
describe_difference(new_vector, my_vector)

# Write a function `combine_vectors` that takes in 3 vectors and combines them into one
combine_vectors <- function(vector1, vector2, vector3) {
  c(vector1, vector2, vector3)
}

# Send 3 vectors to your function to test it.
test_vector1 <- c(1, 2, 3)
test_vector2 <- c(4, 5, 6, 7)
test_vector3 <- c(8, 9)

# Write a function `caps_time` that takes in a vector of names of courses you're taking, ex "Informatics 201" and removes all capital letters
caps_time <- function(course_name) {
  
}
