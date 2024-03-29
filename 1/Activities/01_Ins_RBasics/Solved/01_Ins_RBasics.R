# Numeric ----
a <- 3
b <- 3.1415


# Character
c <- "This is a string"
d <- "Yet another string"

# Boolean ----
e <- TRUE
f <- FALSE
g <- T
h <- F

# A vector is a basic unit of data structure in R
# All elements in a vector must be of the same type
disney_characters <- c("mickey", "minnie", "donald", "goofy")
presidents <- c("washington", "adams", "jefferson")
numbers_vector <- c(1, 3, 5, 7, 9, 11)

print(disney_characters)
print(presidents)
print(numbers_vector)

# R is a one-index language!
presidents[1]

### Combine vectors into a single vector ----
combined_vector <- c(disney_characters, presidents)
combined_vector

### A for-loop
for (x in combined_vector){
  print(x)
}

  
    
# Operate over an entire vector en masse
numeric_vector <- 1:length(combined_vector)
squared_vector <- numeric_vector**2

print(combined_vector)
print(numeric_vector)
print(squared_vector)

# An if/else statement
# nchar() returns the number of characters
for (prez in presidents){
  if (nchar(prez) > 5){
    next
  }
  else {
    print(prez)
  }
}

# A list, unlike a vector, can contain various data types
random_list <- list("movies"=c("Star Wars", "Titanic", "Avatar"),
                    "states"=c("California", "Oklahoma", "Texas", "Virginia"),
                    "coins"=c("penny", "dime", "nickel", "quarter"),
                    "first_presidents"=presidents,
                    "nums"=c(1,2,3,4,5),
                    "bools"=c(T,F,T,T,T,F)
)

# We can use the bracket notation to access an item in a list:
random_list["states"]

# Or use the $ sign
random_list$coins

# Verify type
typeof(random_list)
