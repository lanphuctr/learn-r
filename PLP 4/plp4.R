library(stringr)

# for loop
for (i in 1:5){
  print(i)
}

# while loop
i <- 1
while (i <= 5){
  print(i)
}

# This function takes in 2 numbers and return their product
multiply <- function(a,b){
  return(a*b)
}

# This recursive function calculates a factorial
factorial <- function(n){
  if (n==0 | n==1){
    return(1)
  }
  else{
    return(n*factorial(n-1))
  }
}

# Call a function and save the results of the function call in a variable
weirdo <- factorial(5) - multiply(multiply(multiply(multiply(1,2),3),4),5)

# R function can take in arguments of different types. Try this
concat <- function(a,b){
  paste(a+b)
}

# This function splits a string into 2
splitstring <- function(string){
  str_split(string, "", n=2)
}

# This code tests if R passes by value or reference
x <- numeric(10)
modify <- function(x){
  for(i in 1:10){
    x[[i]] <- 1
  }
  return(x)
}
x
modify(x)

