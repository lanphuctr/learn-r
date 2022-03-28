# Selection Control Structures

## Boolean values
In R, Boolean values are `TRUE` and `FALSE`. Evaluate any expression and you will get one of them.

## Conditional statements
### if
In R, the scope of the code is defined by curly brackets `{}`, just like Java, but R does not require the annoying, buggy `;` at the end of the line. 
```{r}
if (condition) {
  do something here
}
```
The block of codes will be executed if the condition is evaluated to be `TRUE`. There can be multiple conditional statements and thereby we need two logical operators here, `&` (and) and `|` (or).

`&` example:
```{r}
mygpa <- 3.0
yourgpa <- 3.5
profgpa <- 4.0
if (mygpa < yourgpa & yourgpa < profgpa) {
  print("I'm a terrible student")
}
```
`|` example:
```{r}
mygpa <- 3.0
yourgpa <- 3.5
profgpa <- 4.0
if (mygpa < yourgpa | mygpa < profgpa) {
  print("I'm a terrible student")
}
```

### else if
`else if` is used when you want to say to your program, "if the previous condition(s) don't work, try this one."
```{r}
mygpa <- 3.0
yourgpa <- 3.5
profgpa <- 4.0
if (mygpa > yourgpa) {
  print("I'm not a terrible student, jk")
} else if (mygpa < yourgpa) {
  print("I'm a terrible student, not jk")
}
```

### else 
`else` is used when you almost want to give up on going out on dates with those conditions, and this time you say, "If all previous dates (conditions) don't work, this time I just do whatever I can without having anyone to tell me what is `TRUE`."
```{r}
mygpa <- 3.0
yourgpa <- 3.5
profgpa <- 4.0
if (mygpa > yourgpa) {
  print("I'm not a terrible student, jk")
} else if (mygpa < yourgpa) {
  print("I'm a terrible student, not jk")
} else {
  print("I don't care. We're equal")
}
```

`else if` can be used without `else` and just like that, `else` can be used without `else if`, depending on your will(power/ingness) to specify the conditions.

### if can be nested
```{r}
mygpa <- 3.0
yourgpa <- 3.5
profgpa <- 4.0
if (mygpa > yourgpa) {
  print("I'm not a terrible student, jk")
  if (mygpa > profgpa) {
    print("In fact, I'm not a terrible student!")
  }
} 
```

### ifelse, not if-else
People say this is the shorthand version of `if-else`. The use that makes ifelse() stand out and impress me is it can work with vector values.
Its syntax:
```{r}
ifelse(condition, a, b)
```
If the condition is `TRUE`, `a` will be executed, or else, `b`. In this case, no curly brackets `{}` are needed at all. Everything is wrapped inside a pair of parentheses. *Very convenient*.
```{r}
mybirthday <- c(29, 5, 2000)
ifelse(mybirthday %% 2 == 0, "even", "odd")
```
It will return `odd`, `odd`, and `even`.

### switch
```{r}
switch(expression, case1, case2, case3,...)
```
The expression is matched with a list of values and the corresponding value is returned.
According to GeeksforGeeks, here are some important points regarding `switch` statement:
- An expression type with character string always matched to the listed cases.
- An expression which is not a character string then this expression is coerced to integer.
- For multiple matches, the first match element will be used.
- No default argument case is available there in R switch case.
- An unnamed case can be used, if there is no matched case.
```{r}
myFulbright <- switch(5, "Fulbright", "is", "not", "really", "bad")
paste("My Fulbright is", myFulbright)
```
I don't mean to say my Fulbright is bad; `switch` frames me. 

### R is lazy enough so booleans are operated in a short-circuit manner. Periodt.

## References
https://www.geeksforgeeks.org/switch-case-in-r/
