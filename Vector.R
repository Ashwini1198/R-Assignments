numbers <- c(1, 2, 3)
numbers
fruits <- c("banana", "apple", "orange", "mango", "lemon")
fruits[c(-1)]
numbers <- 1:10
numbers
numbers1 <- 1.5:6.5
numbers1
numbers2 <- 1.5:6.3
numbers2
# Vector of logical values
log_values <- c(TRUE, FALSE, TRUE, FALSE)
log_values
# vector length of fruits
fruits <- c("banana", "apple", "orange")
length(fruits)
# sort a vector
fruits <- c("banana", "apple", "orange", "mango", "lemon")
sort(fruits)
number <- c(13,3,5,7,20,2)
sort(number)
fruits[c(-1)]
fruits[1] <- "pear" # change an item banana to pear
fruits
# repeat vectors
repeat_each <- rep(c(1,2,3), each = 3)
repeat_each #repeat each values
#repeate sequence of the vectors
repeat_times <- rep(c(1,2,3), times = 3)
repeat_times
#Repeat each value independently:
repeat_indepent <- rep(c(1,2,3), times = c(5,2,1))
repeat_indepent
# generate sequence vector
numbers <- 1:10
numbers
# bigger to smaller steps in a sequence
numbers <- seq(from = 0, to = 100, by = 20)
numbers
