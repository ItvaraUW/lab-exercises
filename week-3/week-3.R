# Making vectors and Dataframes

# What could be an issue here?
event_capacity <- c(60, 50, '100', 100)

# Fix the possible error in a new variable event_capacity_new
event_capacity_new <- c(60, 50, 100, 100)

# Create a vector of event names for each event 
event_names <- c("Event 1", "Event 2", "Event 3", "Event 4")
  
# Fix the error in creating this dataframe
events <- data.frame(event_names, event_cost, event_capacity)
events <- data.frame(event_names, event_capacity_new)

# Check the event_capacity column

events$event_capacity
events$event_capacity_new

# Try with event_capacity_new column
events <- data.frame(event_names, event_capacity_new)

# Are there any differences between event_capacity and event_capacity)_new?
# Answer here
# When checking by looking at the values stored, no there looks like there is
# no difference but there is a single value that is stored as a string instead of an integer.

# Fix an error of adding columns to the dataframe
events$event_attendance <- c(54, 43, 85, 90)

# Add a column called seats_left in the events dataframe
events$seats_left <- events$event_capacity_new - events$event_attendance

View(events)
  