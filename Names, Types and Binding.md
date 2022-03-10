# Names, Types and Binding :shipit:
- [Names](https://github.com/lanphuctr/learn-r/new/main#names)
  - Naming rules
  - Naming conventions
- [Types](https://github.com/lanphuctr/learn-r/new/main#types)
  - Basic data types
  - R characteristics
  - Basic operators
- [Binding](https://github.com/lanphuctr/learn-r/new/main#binding)
  - R objects are mostly immutable
## [Names](https://github.com/lanphuctr/learn-r/new/main#names-types-and-binding-shipit)
While there has been no official naming convention in R, R has its own strict rules of what constitutes a syntactic name.
### Naming rules
A name that follows the following rules is called a syntactic name (and the one that does not is called a non-syntactic name):
- a name **mostly starts** with a letter and consists of letters, digits, period `.` and underscore `_`;
- a name **cannot start** with a digit or an underscore `_`, but
- a name **can start** with a period `.`, but
- if a name starts with a `.`, it cannot be followed by a digit;
- a name is **case-sensitive** in R, which means sensitive, Sensitive and SENSITIVE are different;
- a name **cannot** be a **reserved word** (notably, TRUE, FALSE, NULL, if, etc.; [here](https://rdrr.io/r/base/Reserved.html) for an exhaustive list)

There is a way to get around these rules if, for some reason, you want to be a rebel. Wrap **backsticks** around the variable name!
```{r}
`_profnanetteisthebest` <- "yes, she is"
`_profnanetteisthebest`
```
The result will return the string value:
```
## [1] "yes she is"
```
Or even weirder,
```{r}
`TRUE` <- FALSE
`TRUE`
```
The result will be...
```
## [1] FALSE
```
However, I don't think this is a good coding practice. Don't follow this, please!

To assign a value to a variable, we use `<-`. On the left-hand side of the assignment sign `<-` is the variable name and on the other side is the value bound to the name on the left.
What binding is will be discussed later and for now, I'm going to try assigning a value to a variable (though I already did it up there...)
```{r}
mygpa <- "i'm not going to tell you"
mygpa
```
You can already see that it is easy to output the variable value: just type the variable name.
```
## [1] "i'm not going to tell you"
```

### Naming conventions
As aforementioned, there has been no official naming convention in R. Naming conventions in R vary based on the style guide to which each of them belongs. 
Two common names in this list are [Hadley Wickham's style guide](http://stat405.had.co.nz/r-style.html) and [Google's R style guide](https://google.github.io/styleguide/Rguide.html).
The names of these naming conventions themselves are self-explanatory and for further details, refer to [this article](https://journal.r-project.org/archive/2012-2/RJournal_2012-2_Baaaath.pdf).
- alllowercase
- period.separated
- underscore_separated
- lowerCamelCase
- UpperCamelCase

## [Types](https://github.com/lanphuctr/learn-r/new/main#names-types-and-binding-shipit)
### Basic data types
There are 5 basic data types in R:
- `numeric`: `29`, `5`
- `integer`: `2000L` (`L` tells R to store this value as an integer)
- `character`: `"two numeric examples constitute my birthday, fyi"` (string)
- `logical`: `TRUE` or `FALSE` (boolean)
- `complex`: `2+5i`

We can use `class()` to check the data type of a variable. 
```{r}
mygpa_num <- 3
mygpa_int <- 3L
mygpa_char <- "i won't tell you"
mygpa_logic <- FALSE
mygpa_complex <- 3+2i
```
Print out the values
```
mygpa_num
## [1] 3
mygpa_int
## [1] 3
mygpa_char
## [1] "i won't tell you"
mygpa_logic
## [1] FALSE
mygpa_complex
## [1] 3+2i
```
Check these variables' data types
```
class(mygpa_num)
## [1] "numeric"
class(mygpa_int)
## [1] "integer"
class(mygpa_char)
## [1] "character"
class(mygpa_logic)
## [1] "logical"
class(mygpa_complex)
## [1] "complex"
```

I nearly get away with it, but I feel guilty of not really being able to differentiate `numeric` and `integer` so I decided to look into it again. The answer I got is the `numeric` classes consist of several sub-classes, with `integer` being one of them.
To clarify, I will check if `mygpa_int` belongs to the `numeric` class or not with the help of `is.numeric()` function:
```{r}
is.numeric(mygpa_int)
## [1] TRUE
```
It is, indeed.

### R characteristics
- R is **dynamically typed**
```{r}
mygpa <- 3
mygpa <- "four, no way!"
mygpa
## [1] "four, no way!"
```
- R is **strongly typed**
```{r}
mygpa <- 3
yourgpa <- "four"
mygpa + yourgpa 
## Error in mygpa + yourgpa : non-numeric argument to binary operator
```
- R performs **implicit conversions**
```{r}
gpa <- TRUE
gpa[4] <- 3
gpa 
## [1] 1 NA NA 3 ## TRUE is converted into 1
gpa[3] <- 3.4
gpa
## [1] 1.0 NA 3.4 3.0 ## integers are converted into decimals
```
### Basic operators
R has 5 groups of operators
- Arithmetic operators
- Assignment operators
- Comparison operators
- Logical operators
- Miscellaneous operators

#### Arithmetic operators
To perform common mathematical operations on numeric variables
- addition: `+`
- subtraction: `-`
- multiplication: `*`
- division: `/`
- integer division: `% / %`
- exponent: `^`
- remainder: `%%`

#### Assignment operators
```{r}
mygpa_1 <- 3
3 -> mygpa_2
mygpa_3 <<- 3
3 -> mygpa_4
mygpa_1
## [1] 3
mygpa_2
## [1] 3
mygpa_3
## [1] 3
mygpa_4
## [1] 3
```
You can assign a value to multiple variables, too:
```{r}
mygpa <- yourgpa <- 3
mygpa
## [1] 3
yourgpa 
## [1] 3
```

#### Comparison operators
- equal: `==`
- not equal: `!=`
- greater than: `>`
- greater than or equal to: `>=`
- less than: `<`
- less than or equal to: `<=`

#### Logical operators
- logical AND: `&&` (evaluating left to right only examining the 1st element, TRUE if both are TRUE)
- element-wise logical AND: `&` (compare element-wise, TRUE if both are TRUE)
- logical OR: `||` (evaluating left to right only examining the 1st element, TRUE if one is TRUE)
- element-wise logical OR: `|` (compare element-wise, TRUE if one is TRUE)
- logical NOT: `!` (FALSE if a statement is TRUE)

#### Miscellaneous operators
- create a series of number in sequence: `:`
- find if an element belongs to a vector: `%in%`
- multiply 2 matrices: `%*%`

## [Binding](https://github.com/lanphuctr/learn-r/new/main#names-types-and-binding-shipit)
```{r}
mygpa <- 3
```
What does this code do?
- It first creates an object, here the value `3`, then
- It binds the object to the name `mygpa`
We can say that an object or a value does not have a name, but a name has its value

### R objects are immutable (mostly)
`gpa` and `apg` are bound to the same value, here a vector comprising 3 elements:
```{r}
gpa <- c(2, 3, 4)
apg <- gpa
```
Then we change the third element or modify `apg`:
```{r}
apg[[3]] <- 5
apg
## [1] 2 3 5
gpa 
## [1] 2 3 4
```
We clearly see that x is not modified when we modify y, though at first they are bound to the same object. What happens behind the scene? A copy of the object is created with one element changed and y is rebound to this new object, while x is still bound to the original object.
That's where we say **R objects are mostly immutable** (because there are exceptions).

## References
[1] https://adv-r.hadley.nz/index.html<br>
[2] https://stackoverflow.com/questions/23660094/whats-the-difference-between-integer-class-and-numeric-class-in-r<br>
[3] https://www.w3schools.com/r/r_operators.asp<br>
