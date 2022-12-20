# while loops
#print i as long as i is less than 6
i <- 1
while (i < 6) {
  print(i)
  i <- i + 1
}

#Break statement
#Exit the loop if i is equal to 4.
i <- 1
while (i < 6) {
  print(i)
  i <- i + 1
  if (i == 4) {
    break
  }
}

# Next statement
# Skip the value of 3
i <- 0
while (i < 6) {
  i <- i + 1
  if (i == 3) {
    next
  }
  print(i)
}


# If .. Else Combined with a While Loop
# Print "Yahtzee!" if the dice number is 6
dice <- 1
while (dice <= 6) {
  if (dice < 6) {
    print("No Yahtzee")
  } else {
    print("Yahtzee!")
  }
  dice <- dice + 1
}
