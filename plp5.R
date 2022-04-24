# S3 Class

# Create objects -- a Student and a Professor object
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
print(professor)

# Create a class
professor <- list(name=prof_name, expertise=prof_expertise, quote=prof_quote)
class(professor) <- "Professor"
print(professor)

# Create a print() method for the Professor class
print.Professor <- function(object)
{
  cat("My favorite professor is", object$name, ".\n")
  cat(object$quote, "is the favorite quote of the professor.\n")
}

# Inheritance in S3 Class

# Create an object of Founding Professor class which inherits from Professor class
foundingProf <- list(name="Sebastian", expertise="Human-Computer Interaction", quote="Khong sao dau", startYear="2018")
class(foundingProf) <- c("Founding Professor", "Professor")
print.Professor(foundingProf)

# Create a print() method for Founding Professor class, which will overwrite the print() method of Professor class
print.FoundingProf <- function(object)
{
  cat("Professor", object$name, "has stayed at Fulbright for 4 years.")
}
print.FoundingProf(foundingProf)

# S4 Class

# Class definition in S4
setClass("Professor", slots=list(name="character", expertise="character", quote="character"))
setClass("Student", slots=list(name="character", cohort="numeric", major="character"))

# Create a Professor object
newProf <- new("Professor",name="Sebastian", expertise="Human-Computer Interaction", quote="Khong sao dau!")
newProf

# Create a Student object
newStudent <- new("Student", name="Vu Linh", cohort=2024, major="Computer Science")

# Check if the newly created object is a S4 object or not
isS4(newProf)

# Access an object's slots using @, not $
newProf@name

# Modify slots
newProf@name <- "Dziallas"
newProf@name

# Create a show() method for the Professor class
setMethod("show", "Professor",
          function(object) {
            cat("Name:", object@name, "\n")
            cat("Research area:", object@expertise, "\n")
            cat("Favorite quote:", object@quote, "\n")
          }
)
show(newProf)
show(newStudent)

foundingProf <- new("Professor", name="Kinho", expertise="Neuroscience", quote="It makes a lot more sense in your head")
show(foundingProf)

# Inheritance in S4 Class
setClass("Visiting Faculty", slots = list(homeuni = "character"), contains = "Professor")
visitingProf <- new("Visiting Professor", name="Nanette", expertise="NLP", quote="My heart says yes but my mom says no", homeuni="Simmons University")
show(visitingProf)

