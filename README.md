# LeaRn R with me
This repo keeps track of my progress in learning R.
Navigation
- [PLP 1: Language Overview and Setup](https://github.com/lanphuctr/learn-r/edit/main/README.md#language-overview-and-setup)
- [PLP 2: Names, Types and Binding](https://github.com/lanphuctr/learn-r/edit/main/README.md#names-types-and-binding-shipit)
- [PLP 3: Selection Control Structures](https://github.com/lanphuctr/learn-r/edit/main/README.md#selection-control-structures)
- [PLP 4: Loops and Subroutines](https://github.com/lanphuctr/learn-r/edit/main/README.md#loops-and-subroutines)
- [PLP 5: Objects and Classes](https://github.com/lanphuctr/learn-r/edit/main/README.md#objects-and-classes)
# [Language Overview and Setup](https://github.com/lanphuctr/learn-r/edit/main/README.md#learn-r-with-me)
## History
	
If you think it’s weird enough to name a programming language R, that’s not the end of the story – R has a sister named S. However, R has its own reason to be named that way; its parents are believed to be two statisticians **R**oss Ihaka and **R**obert Gentleman at the University of Auckland, New Zealand, whose first names both start with R. 

Though R was born 15 years later than S in 1991, they are (almost) twins since much code written for S can be run in R. “Much”, not all; there are differences. I think R is more open(-minded) than S as R is a free open-source implementation of S.

Unlike its peer, Python, a multi-purpose language, R is a programming language and environment for statistics and graphics and mainly used by statisticians and data miners. Here comes the not-yet-settled debate on which one is better, R or Python, in data analytics and data science (differences between these two easily mistaken concepts can be found [here](https://www.northeastern.edu/graduate/blog/data-analytics-vs-data-science/)). If you are interested in this debate, you can find more information in [this article](https://towardsdatascience.com/data-science-101-is-python-better-than-r-b8f258f57b0f) in Towards Data Science, where the author compares R with Python in terms of availability, visualization, predictive analytics and performance, or on [DataCamp](https://www.datacamp.com/community/tutorials/r-or-python-for-data-analysis), which provides a quite comprehensive overview of the differences between the two languages. 

I thought about sticking to Python because of its equal power for data analysis; however, I would still give R a try as then I would have more freedom of choice and flexibility switching between the two languages, depending on the task at hand. 

## Getting Started

### Downloading and Installing R
* You can easily download and install R with detailed instructions [here](https://cran.r-project.org/).

* CRAN (Comprehensive R Archive Network) is a network that stores up-to-date R code and documentation and also manages packages used in R. There are thousands of readily available packages for use and you can even submit your own package to CRAN. 

### Setting up the Integrated Development Environment
R is mostly run on RStudio, an IDE itself. In this project, I’m going to use RStudio. I also know that it can be run on Jupyter Notebook, which is a notebook interface. 

Depending on your operating system (OS), the instructions on how to download and install RStudio IDE for free can be found [here](https://www.rstudio.com/products/rstudio/download/).

Note: 
* Since you may have already installed R, you can skip the first step in this instruction that asks you to install R 3.0.1+. 
* Linux users need an extra bit of work before installing RStudio.

## Writing the first program in RStudio

### Getting familiar with RStudio
When you first open RStudio, there will be 3 panes on the screen:
* On the left, there is a R console.
* On the right, the upper pane includes 4 tabs, _Environment, History, Connections_ and _Tutorial_.
* On the right, the lower pane includes 5 tabs, _Files, Plots, Packages, Help_ and _Viewer_.

### Creating a new script in R
To start writing a new script, click on `File` at the top-left corner, then `New File` and finally `R Script`. Or you can just press this keyboard shortcut `Ctrl+Shift+N`.

### Hello World program
It's very simple to run a Hello World program in R. After you've created a new script, the top-left pane will be where you write your program.

Here's the code:
```{r}
print("Hello World!")
```

Press `Ctrl+Enter` or click `Run` on the top-corner of that pane and it'll be printed in the _Console_. That's everything you need to run your first Hello World! program.

Save it by pressing `Ctrl+S` as `HelloWorld.R`. 

## Resources that make it simpleR to learn R
* [Coursera](https://app.datacamp.com/learn/career-tracks/data-scientist-with-r)
* [DataCamp](https://app.datacamp.com/learn/career-tracks/data-scientist-with-r)
* [edX](https://www.edx.org/professional-certificate/harvardx-data-science)

## References
* https://www.r-project.org/about.html
* https://en.wikipedia.org/wiki/R_(programming_language)#cite_ref-Morandat_1-0
* https://towardsdatascience.com/data-science-101-is-python-better-than-r-b8f258f57b0f
* https://www.datacamp.com/community/tutorials/r-or-python-for-data-analysis

# [Names, Types and Binding :shipit:](https://github.com/lanphuctr/learn-r/edit/main/README.md#learn-r-with-me)
In this section:
- [Names](https://github.com/lanphuctr/learn-r/edit/main/README.md#names)
  - Naming rules
  - Naming conventions
- [Types](https://github.com/lanphuctr/learn-r/new/main/README.md#types)
  - Basic data types
  - R characteristics
  - Basic operators
- [Binding](https://github.com/lanphuctr/learn-r/new/main/README.md#binding)
  - R objects are mostly immutable
## [Names](https://github.com/lanphuctr/learn-r/edit/main/README.md#names-types-and-binding-shipit)
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

## [Types](https://github.com/lanphuctr/learn-r/edit/main/README.md#names-types-and-binding-shipit)
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

## [Binding](https://github.com/lanphuctr/learn-r/edit/main/README.md#names-types-and-binding-shipit)
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

# [Selection Control Structures](https://github.com/lanphuctr/learn-r/edit/main/README.md#learn-r-with-me)
In this section:
- Boolean values
- Conditional statements
	- [if](https://github.com/lanphuctr/learn-r/edit/main/README.md#if)
	- [else if](https://github.com/lanphuctr/learn-r/edit/main/README.md#else-if)
	- [else](https://github.com/lanphuctr/learn-r/edit/main/README.md#else)
	- [if can be nested](https://github.com/lanphuctr/learn-r/edit/main/README.md#if-can-be-nested)
	- [ifelse, not if-else](https://github.com/lanphuctr/learn-r/edit/main/README.md#ifelse-not-if-else)
	- [switch](https://github.com/lanphuctr/learn-r/edit/main/README.md#switch)
## [Boolean values](https://github.com/lanphuctr/learn-r/edit/main/README.md#selection-control-structures)
In R, Boolean values are `TRUE` and `FALSE`. Evaluate any expression and you will get one of them.

## [Conditional statements](https://github.com/lanphuctr/learn-r/edit/main/README.md#selection-control-structures)
### [if](https://github.com/lanphuctr/learn-r/edit/main/README.md#selection-control-structures)
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

### [else if](https://github.com/lanphuctr/learn-r/edit/main/README.md#selection-control-structures)
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

### [else](https://github.com/lanphuctr/learn-r/edit/main/README.md#selection-control-structures) 
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

### [if can be nested](https://github.com/lanphuctr/learn-r/edit/main/README.md#selection-control-structures)
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

### [ifelse, not if-else](https://github.com/lanphuctr/learn-r/edit/main/README.md#selection-control-structures)
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

### [switch](https://github.com/lanphuctr/learn-r/edit/main/README.md#selection-control-structures)
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

# [Loops and Subroutines](https://github.com/lanphuctr/learn-r/edit/main/README.md#learn-r-with-me)
In this section:
- [Functions](https://github.com/lanphuctr/learn-r/edit/main/README.md#functions)
- [Loops](https://github.com/lanphuctr/learn-r/edit/main/README.md#loops)
	- [for loop](https://github.com/lanphuctr/learn-r/edit/main/README.md#for-loop)
	- [while loop](https://github.com/lanphuctr/learn-r/edit/main/README.md#while-loop)
## [Functions](https://github.com/lanphuctr/learn-r/edit/main/README.md#loops-and-subroutines)
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

## [Loops](https://github.com/lanphuctr/learn-r/edit/main/README.md#loops-and-subroutines)
### [for loop](https://github.com/lanphuctr/learn-r/edit/main/README.md#loops-and-subroutines)
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

### [while loop](https://github.com/lanphuctr/learn-r/edit/main/README.md#loops-and-subroutines)
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

## Pass by value or pass by reference?
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

## References
https://www.stat.berkeley.edu/~statcur/Workshop2/Presentations/functions.pdf

# [Objects and Classes](https://github.com/lanphuctr/learn-r/edit/main/README.md#learn-r-with-me)
In this section:
- [Objects](https://github.com/lanphuctr/learn-r/edit/main/README.md#objects)
- [Classes](https://github.com/lanphuctr/learn-r/edit/main/README.md#classes)
	- [S3](https://github.com/lanphuctr/learn-r/edit/main/README.md#s3-class)
	- [S4](https://github.com/lanphuctr/learn-r/edit/main/README.md#s4-class)

R does support Object-Oriented Programming (OOP), but it's challenging. Why?
- Many OOP systems to choose from, namely S3, S4, R6.
- Different R communities use different OOP systems.
Though possible, OOP is less important than functional programming in R.

## [Objects](https://github.com/lanphuctr/learn-r/edit/main/README.md#objects-and-classes)
Everthing in R is an object.
Here is an example of a `student` and a `professor` object.
```{r}
student_name <- "epstein"
student_age <- 21
student_year <- "junior"
student_major <- "economics"

prof_name <- "all-know-who"
prof_expertise <- "nlp"
prof_quote <- "my heart says yes but my mom says no"

student <- c(student_name, student_age, student_year, student_major)
professor <- c(prof_name, prof_expertise, prof_quote)
print(student)
# [1] "epstein"   "21"        "junior"    "economics"
print(professor)
# [1] "all-know-who"                         "nlp"                                  "my heart says yes but my mom says no"
```

## [Classes](https://github.com/lanphuctr/learn-r/edit/main/README.md#objects-and-classes)
Class is a kind of blueprint that creates an object and contains its member variables and attributes.

### [S3 Class](https://github.com/lanphuctr/learn-r/edit/main/README.md#objects-and-classes)
Assign a list to an object. Pass this object as argument to the `class()` method. Give the class a name. 
```{r}
professor <- list(name=prof_name, expertise=prof_expertise, quote=prof_quote)
class(professor) <- "Professor"
print(professor)
# $name
# [1] "all-know-who"

# $expertise
# [1] "nlp"

# $quote
# [1] "my heart says yes but my mom says no"

# attr(,"class")
# [1] "Professor"
```
Class name tends to be any string. It is recommended to be letters and underscore(s) `_` and to not include dot(s) `.` which is easily confused as a separator between a generic name and a class name. Since S3 class is just a character string attribute, it says nothing about the object's properties.

```{r}
print.Professor <- function(object)
{
  cat("My favorite professor is", object$name,".\n")
  cat("'", object$quote, "'", "is the favorite quote of the professor.\n")
}
# Here we're gonna use the above-defined professor object
print.Professor(professor) 
# My favorite professor is all-know-who .
# ' my heart says yes but my mom says no ' is the favorite quote of the professor.
```
#### Inheritance in S3
S3 objects only inherit methods from the base class. 
```{r}
# Create an object of Founding Professor class which inherits from Professor class
foundingProf <- list(name="Sebastian", expertise="Human-Computer Interaction", quote="Khong sao dau", startYear="2018")
class(foundingProf) <- c("Founding Professor", "Professor")
print.Professor(foundingProf)
# My favorite professor is Sebastian .
# Khong sao dau is the favorite quote of the professor.
```
Obviously, the new object of class `Founding Professor` inherits the print() method of `Professor` class.

Create a new print() method for `Founding Professor` class, which will overwrite the print() method of `Professor` class.
```{r}
print.FoundingProf <- function(object)
{
  cat("Professor", object$name, "has stayed at Fulbright for 4 years.")
}
print.FoundingProf(foundingProf)
# Professor Sebastian has stayed at Fulbright for 4 years.
```

### [S4 Class](https://github.com/lanphuctr/learn-r/edit/main/README.md#objects-and-classes)
There is formal class definition in S4. 
- Use `setClass()` to create and define a class.
- The slots are just like the fields of a class in Java (if you're familiar with this language already).
- Create a new object of this class with `new()` and by passing the class name, class slots' values as arguments.
```{r}
setClass("Professor", slots=list(name="character", expertise="character", quote="character"))
setClass("Student", slots=list(name="character", cohort="numeric", major="character"))

# Create a Professor object
newProf <- new("Professor",name="Sebastian", expertise="Human-Computer Interaction", quote="Khong sao dau!")
newProf
# An object of class "Professor"
# Slot "name":
# [1] "Sebastian"

# Slot "expertise":
# [1] "Human-Computer Interaction"

# Slot "quote":
# [1] "Khong sao dau!"

# Create a Student object
newStudent <- new("Student", name="Vu Linh", cohort=2024, major="Computer Science")
```

#### Create a function/generic method in S4
```{r}
setMethod("show", "Professor",
          function(object) {
            cat("Name:", object@name, "\n")
            cat("Research area:", object@expertise, "\n")
            cat("Favorite quote:", object@quote, "\n")
          }
)
show(newProf)
# Name: Dziallas 
# Research area: Human-Computer Interaction 
# Favorite quote: Khong sao dau! 
show(newStudent)
# An object of class "Student"
# Slot "name":
# [1] "Vu Linh"

# Slot "expertise":
# [1] "Human-Computer Interaction"

# Slot "quote":
# [1] "Khong sao dau!"
```
The generic function used is `show()`. This method only works on `Professor` objects, not `Student` objects.

#### Inheritance in S4
Derived classes can inherit attributes and methods from base classes.
```{r}
setClass("Visiting Faculty", slots = list(homeuni = "character"), contains = "Professor")
visitingProf <- new("Visiting Faculty", name="Nanette", expertise="NLP", quote="My heart says yes but my mom says no", homeuni="Simmons University")
show(visitingProf)
# Name: Nanette 
# Research area: NLP 
# Favorite quote: My heart says yes but my mom says no
```

## References
* https://www.geeksforgeeks.org/classes-in-r-programming/
* https://www.stat.umn.edu/geyer/3701/notes/generic.html
* https://www.datacamp.com/community/tutorials/r-objects-and-classes
* https://www.geeksforgeeks.org/r-inheritance/#:~:text=Inheritance%20is%20one%20of%20the,in%20re%2Dusability%20of%20code.
* https://www.datamentor.io/r-programming/inheritance/
