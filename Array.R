# An array with one dimension with values ranging from 1 to 24
thisarray <- c(1:24)
thisarray
# An array with more than one dimension
multiarray <- array(thisarray, dim = c(4, 3, 2))
multiarray
# access array items
thisarray <- c(1:24)
multiarray <- array(thisarray, dim = c(4, 3, 2))
multiarray[2, 3, 2]

thisarray <- c(1:24)
# Access all the items from the first row from matrix one
multiarray <- array(thisarray, dim = c(4, 3, 2))
multiarray[c(1),,1]
# Access all the items from the first column from matrix one
multiarray <- array(thisarray, dim = c(4, 3, 2))
multiarray[,c(1),1]
# array length
thisarray <- c(1:24)
multiarray <- array(thisarray, dim = c(4, 3, 2))
length(multiarray)
