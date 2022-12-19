# List of strings
thislist <- list("apple", "banana", "cherry")
thislist
# access list of index 2
thislist[1]
#change item value
thislist[1] <- 'blackcurrant'
thislist
#list length
length(thislist)
thislist
#check iem exists
thislist <- list("apple", "banana", "cherry")
'apple' %in% thislist
# add list items
append(thislist,'orange')
# right of a specified index
append(thislist,'orange', after=2)
# remove list items
newlist <- thislist[-1]
newlist
