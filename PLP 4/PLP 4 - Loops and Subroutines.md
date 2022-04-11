# Loops and Subroutines
## Functions
### Steps to create a function:
- Pick a name for it, just like a variable name. In fact, functions are basically R objects of class `function`. 
- Use the `function()` directive that takes in arguments (inputs) to be used inside that function.
- Develop the function body, wrapped around by a pair of curly brackets `{}`.

Syntax for declaring a function:
```{r}
name <- function(<arguments>) {
  # Do something here
}
```

### How R functions work:
- In R, functions can be passed as arguments to other functions.
- In R, a function can be declared inside another function -- called nested functions.
- **The return value is the last expression in the function body to be evaluated.** R cannot return multiple values. One way to get around this limitation is return a list/vector containing the necessary elements.
```{r}
# This function returns a multiple-element value
return_multiple <- function(a,b){
  return(c(a,b))
}
return_multiple(1,2)
# [1] 1 2
```


### Function arguments
- There are formal and actual arguments. Formal arguments are properties of the function, while actual arguments vary each time you call the function.
- Function arguments may have default values and can be missing.
- Function arguments can be matched by position or by name. For example, all the sd function calls below are the same:

![image](https://user-images.githubusercontent.com/90641074/162677858-11c9dbcb-4abe-4305-804c-96440a490381.png)
- R functions do accept multiple parameters and these parameters can be of different types (I guess it may have something to do with R's being dynamically typed?). For example,
```{r}
# This function concatenates a string with a number
concat <- function(a,b){
  paste(a+b)
}
concat("My birthday is on", 295)
# [1] "My birthday is on 295"
```
- R is lazy and so is its evaluation. Arguments to a function are only evaluated if needed/used in the body.

### Recursive functions in R
R supports recursive functions!
```{r}
# This recursive function to calculate a factorial is a classic example
factorial <- function(n){
  if (n==0 | n==1){
    return(1)
  }
  else{
    return(n*factorial(n-1))
  }
}
factorial(5)
# [1] 120
```

## Loops
### for loop
```{r}
for (i in 1:5){
  print(i)
}
# [1] 1
# [1] 2
# [1] 3
# [1] 4
# [1] 5
```
_If you're familiar with Python, then a difference that should be clarified here is that in R the range is inclusive._

### while loop
```{r}
i <- 1
while (i <= 5){
  print(i)
}
# [1] 1
# [1] 2
# [1] 3
# [1] 4
# [1] 5
```

# Pass by value or pass by reference?
```{r}
x <- numeric(10)
x
# [1] 0 0 0 0 0 0 0 0 0 0 
modify <- function(x){
  for(i in 1:10){
    x[[i]] <- 1
  }
  return(x)
}
modify(x)
# [1] 1 1 1 1 1 1 1 1 1 1
```
Based on this code, I think R passes by value.

# References
https://www.stat.berkeley.edu/~statcur/Workshop2/Presentations/functions.pdf
