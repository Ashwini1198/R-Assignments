# For loops
for (x in 1:10) {
  print(x)
}

# Print every item in a list:
fruits <- list("apple", "banana", "cherry")

for (x in fruits) {
  print(x)
}

# Print the number of dices:
dice <- c(1, 2, 3, 4, 5, 6)

for (x in dice) {
  print(x)
}

#Using break statement
#Stop the loop at "cherry":
fruits <- list("apple", "banana", "cherry")

for (x in fruits) {
  if (x == "cherry") {
    break
  }
  print(x)
}

# Using next statement
# Skip "banana":
fruits <- list("apple", "banana", "cherry")

for (x in fruits) {
  if (x == "banana") {
    next
  }
  print(x)
}



# If Else Combined with a For Loop
# Print "Yahtzee!" If the dice number is 6:
dice <- 1:6

for(x in dice) {
  if (x == 6) {
    print(paste("The dice number is", x, "Yahtzee!"))
  } else {
    print(paste("The dice number is", x, "Not Yahtzee"))
  }
}


# Nested loops
# Print the adjective of each fruit in a list:
adj <- list("red", "big", "tasty")

fruits <- list("apple", "banana", "cherry")
for (x in adj) {
  for (y in fruits) {
    print(paste(x, y))
  }
}
