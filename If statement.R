a <- 33
b <- 200

if (b > a) {
  print("b is greater than a")
}

# else if
a <- 33
b <- 33
if (b > a) {
  print("b is greater than a")
} else if (a == b) {
  print ("a and b are equal")
}

a <- 200
b <- 33
if (b > a) {
  print("b is greater than a")
} else if (a == b) {
  print("a and b are equal")
} else {
  print("a is greater than b")
}


a <- 200
b <- 33
if (b > a) {
  print("b is greater than a")
} else {
  print("b is not greater than a")
}

# nested if statement
x <- 41
if (x > 10) {
  print("Above ten")
  if (x > 20) {
    print("and also above 20!")
  } else {
    print("but not above 20.")
  }
} else {
  print("below 10.")
}

# using AND
a <- 200
b <- 33
c <- 500
if (a > b & c > a) {
  print("Both conditions are true")
}

# using OR
a <- 200
b <- 33
c <- 500
if (a > b | a > c) {
  print("At least one of the conditions is true")
}
