# vector in R

# Creating a vector using the c() command
student.height = c(60, 69, 55, 62)
student.height

# Checkig the class of the vector student.height
is.numeric(student.height)
is.logical(student.height)
# R automatically converts numeric to text,
# when you have a text item in the vector
b = c(5, 8, 2, "sv")
b
is.numeric(b)
is.character(b)

# We can convert data types
#For example from numeric to character
a = c(1, 2, 3, 4, 5)
a
class(a)
is.numeric(a)
a = as.character(a)
class(a)

# logical operator TRUE and False when converted
# to numeric, True converts to 1,
# and false converts to 0
d = c(TRUE, FALSE, FALSE, TRUE, FALSE)
d = as.numeric(d)
d

# Coverting numeric to logical (1 or any number
# other than 0 converts  to TRUE, 0 converts to False)
d
class(d)
d = as.logical(d)
d

e = c(1, 2, 3, 4, 5, 6, -7, 0)
e = as.logical(e)
e

# Creating sequential vector
# Creating vector starting from 1 to 10
my_seq = c(1:50, 80, 99, 88,60, 77)
my_seq

# Creating a sequential vector using seq() function
new_seq = c(seq(1,10))
new_seq

# Sequence in steps of 3
new_seq = c(seq(1, 10, by=3))
new_seq

# Vectors can have character
names = c("Mahfuza", "Hasan", "Chaitali", "svdh", "xjhi", "fhsbs")
names
class(names)
names[3:4]

# Assigning names to vector values
my_values = c(4, 7, 9, 11)
names(my_values) = c("b", "c", "d", "f")
my_values
my_values["c"]