# Python Basics - Complete Learning Guide

## Table of Contents
1. [Data Types](#data-types)
2. [If-Else Conditions](#if-else-conditions)
3. [For & While Loops](#for--while-loops)
4. [Try-Except Blocks](#try-except-blocks)
5. [Variable Scoping](#variable-scoping)
6. [Type Casting](#type-casting)
7. [Input-Output Operations](#input-output-operations)
8. [Logical Operators](#logical-operators)
9. [Arithmetic Operators](#arithmetic-operators)
10. [Break & Continue](#break--continue)

---

## Data Types

### Overview
Python has several built-in data types: Integer, Float, String, and Boolean.

### 1. Integer
An integer is a whole number without decimals.

```python
# Integer examples
age = 25
count = -10
year = 2024

# Operations with integers
x = 10
y = 3
print(x + y)        # 13
print(x - y)        # 7
print(x * y)        # 30
print(x / y)        # 3.333...
print(x // y)       # 3 (floor division)
print(x % y)        # 1 (modulus)
print(x ** y)       # 1000 (exponent)

# Check if variable is integer
print(type(age))    # <class 'int'>
```

### 2. Float
A float is a number with decimal points.

```python
# Float examples
height = 5.9
price = 19.99
pi = 3.14159

# Operations with floats
a = 10.5
b = 2.3
print(a + b)        # 12.8
print(a - b)        # 8.2
print(a * b)        # 24.15
print(a / b)        # 4.565...

# Check type
print(type(height)) # <class 'float'>

# Convert string to float
string_num = "3.14"
float_num = float(string_num)
print(float_num)    # 3.14
```

### 3. String
A string is a sequence of characters enclosed in quotes (single or double).

```python
# String examples
name = "John Doe"
city = 'New York'
message = """This is a 
multi-line string"""

# String operations
str1 = "Hello"
str2 = "World"
print(str1 + " " + str2)  # Hello World (concatenation)
print(str1 * 3)           # HelloHelloHello (repetition)

# String methods
text = "Python Programming"
print(text.lower())       # python programming
print(text.upper())       # PYTHON PROGRAMMING
print(text.replace("Python", "Java"))  # Java Programming
print(text.split(" "))    # ['Python', 'Programming']
print(text.startswith("Python"))  # True
print(text.endswith("ing"))  # True
print(len(text))          # 18 (length)

# String indexing
word = "Hello"
print(word[0])      # H
print(word[-1])     # o
print(word[1:4])    # ell (slicing)

# f-strings (formatted strings)
age = 25
name = "Alice"
print(f"{name} is {age} years old")  # Alice is 25 years old
```

### 4. Boolean
A boolean is either True or False.

```python
# Boolean examples
is_student = True
is_teacher = False

# Boolean operations
x = 5
y = 10
print(x < y)        # True
print(x == y)       # False
print(x != y)       # True
print(x > y)        # False

# Logical operations with booleans
print(True and False)    # False
print(True or False)     # True
print(not True)          # False

# Type checking
print(type(is_student))  # <class 'bool'>
```

---

## If-Else Conditions

### Simple If Statement
Execute code block if condition is True.

```python
age = 18
if age >= 18:
    print("You are an adult")
```

### If-Else Statement
Execute one block if condition is True, another if False.

```python
score = 45
if score >= 50:
    print("Pass")
else:
    print("Fail")
```

### If-Elif-Else Statement
Check multiple conditions.

```python
marks = 85

if marks >= 90:
    grade = "A"
elif marks >= 80:
    grade = "B"
elif marks >= 70:
    grade = "C"
elif marks >= 60:
    grade = "D"
else:
    grade = "F"
    
print(f"Your grade is: {grade}")
```

### Nested If Statements
If statements inside if statements.

```python
age = 25
has_license = True

if age >= 18:
    if has_license:
        print("You can drive")
    else:
        print("Get a driver's license")
else:
    print("You must be 18 to drive")
```

### Ternary Operator (Conditional Expression)
One-liner if-else.

```python
age = 20
status = "Adult" if age >= 18 else "Minor"
print(status)  # Adult

# More complex example
score = 75
result = "Pass" if score >= 50 else "Fail"
print(result)  # Pass
```

---

## For & While Loops

### For Loop - Iterating Over Range
```python
# Print numbers 0 to 4
for i in range(5):
    print(i)

# Print numbers 1 to 5
for i in range(1, 6):
    print(i)

# Print even numbers from 0 to 10
for i in range(0, 11, 2):
    print(i)

# Print in reverse
for i in range(5, 0, -1):
    print(i)
```

### For Loop - Iterating Over List
```python
fruits = ["apple", "banana", "orange"]
for fruit in fruits:
    print(fruit)

# With index
for index, fruit in enumerate(fruits):
    print(f"{index}: {fruit}")
```

### For Loop - Iterating Over String
```python
word = "Python"
for char in word:
    print(char)
```

### For Loop - Iterating Over Dictionary
```python
student = {"name": "John", "age": 20, "grade": "A"}

# Keys only
for key in student:
    print(key)

# Keys and values
for key, value in student.items():
    print(f"{key}: {value}")
```

### While Loop
Execute code block as long as condition is True.

```python
# Simple while loop
count = 0
while count < 5:
    print(count)
    count += 1

# While with user input
password = ""
while password != "secret":
    password = input("Enter password: ")
print("Access granted!")

# Infinite loop with break (see Break & Continue section)
count = 0
while True:
    print(count)
    count += 1
    if count == 5:
        break
```

### Else Clause with Loops
Execute else block when loop completes normally (no break).

```python
# For-else
for i in range(5):
    print(i)
else:
    print("Loop completed!")

# While-else
count = 0
while count < 5:
    print(count)
    count += 1
else:
    print("Loop completed!")

# For-else with break (else is skipped)
for i in range(10):
    if i == 5:
        print(f"Found {i}")
        break
else:
    print("Number not found")  # This won't execute
```

---

## Try-Except Blocks

### Basic Try-Except
Catch and handle errors gracefully.

```python
try:
    x = 10 / 2
    print(x)  # 5
except ZeroDivisionError:
    print("Cannot divide by zero!")

# This will trigger exception
try:
    y = 10 / 0
except ZeroDivisionError:
    print("Cannot divide by zero!")  # This executes
```

### Multiple Except Blocks
Handle different types of errors differently.

```python
try:
    # User input might cause different errors
    num = int(input("Enter a number: "))
    result = 10 / num
    print(result)
except ValueError:
    print("Invalid input! Please enter a number")
except ZeroDivisionError:
    print("Cannot divide by zero!")
except Exception as e:
    print(f"An error occurred: {e}")
```

### Try-Except-Else
Else block executes if no exception occurs.

```python
try:
    x = int("123")
    result = 100 / x
except ValueError:
    print("Invalid number format")
except ZeroDivisionError:
    print("Division by zero error")
else:
    print(f"Result: {result}")  # This executes if no error
```

### Try-Except-Finally
Finally block always executes (useful for cleanup).

```python
try:
    file = open("myfile.txt", "r")
    content = file.read()
except FileNotFoundError:
    print("File not found!")
finally:
    file.close()  # Always executes, even if error occurs
    print("File closed")

# More practical example
try:
    num = int(input("Enter a number: "))
    result = 10 / num
except (ValueError, ZeroDivisionError) as e:
    print(f"Error: {e}")
else:
    print(f"Result: {result}")
finally:
    print("Operation completed")
```

### Raising Exceptions
Throw exceptions manually.

```python
def validate_age(age):
    if age < 0:
        raise ValueError("Age cannot be negative")
    if age < 18:
        raise ValueError("Must be 18 or older")
    return "Valid age"

try:
    print(validate_age(-5))
except ValueError as e:
    print(f"Validation error: {e}")
```

---

## Variable Scoping

### Local Scope
Variables defined inside a function are local to that function.

```python
def my_function():
    x = 5  # Local variable
    print(x)  # 5

my_function()
# print(x)  # NameError: x is not defined (outside function)
```

### Global Scope
Variables defined outside functions are global.

```python
x = 10  # Global variable

def my_function():
    print(x)  # Can access global variable
    
my_function()  # 10
print(x)       # 10
```

### Global Keyword
Modify global variable inside a function.

```python
x = 10

def modify_global():
    global x
    x = 20

print(x)  # 10
modify_global()
print(x)  # 20
```

### Nonlocal Keyword
Access variables from enclosing function scope.

```python
def outer():
    x = 10
    
    def inner():
        nonlocal x
        x = 20
        print(x)  # 20
    
    inner()
    print(x)  # 20

outer()
```

### Scope Examples
```python
# Local vs Global
name = "Global"

def function1():
    name = "Local"
    print(name)  # Local

function1()
print(name)     # Global

# Accessing different scopes
x = "global"

def outer():
    x = "outer function"
    
    def inner():
        x = "inner function"
        print(x)  # inner function
    
    inner()
    print(x)     # outer function

outer()
print(x)        # global
```

---

## Type Casting

### Convert to Integer
```python
# String to integer
x = int("123")
print(x)        # 123
print(type(x))  # <class 'int'>

# Float to integer (truncates decimal)
y = int(3.99)
print(y)        # 3

# Boolean to integer
z = int(True)
print(z)        # 1
```

### Convert to Float
```python
# String to float
x = float("3.14")
print(x)        # 3.14

# Integer to float
y = float(42)
print(y)        # 42.0

# Boolean to float
z = float(True)
print(z)        # 1.0
```

### Convert to String
```python
# Integer to string
x = str(123)
print(x)        # "123"
print(type(x))  # <class 'str'>

# Float to string
y = str(3.14)
print(y)        # "3.14"

# Boolean to string
z = str(True)
print(z)        # "True"

# List to string
lst = [1, 2, 3]
s = str(lst)
print(s)        # "[1, 2, 3]"
```

### Convert to Boolean
```python
# Non-zero numbers are True, zero is False
print(bool(1))      # True
print(bool(0))      # False
print(bool(-5))     # True

# Non-empty strings are True, empty is False
print(bool("hello"))  # True
print(bool(""))       # False

# Non-empty lists are True, empty is False
print(bool([1, 2]))   # True
print(bool([]))       # False

# None is False
print(bool(None))     # False
```

### Practical Type Casting Examples
```python
# Get user input and convert to integer
age_input = input("Enter your age: ")
age = int(age_input)

# Convert calculation results
total = 100
items = 3
price_per_item = float(total) / items  # Result is float
print(f"Price per item: {price_per_item}")

# Check type before casting
value = "42"
if value.isdigit():
    num = int(value)
    print(f"Number: {num}")
else:
    print("Not a valid number")
```

---

## Input-Output Operations

### Print Function
Output data to the console.

```python
# Simple print
print("Hello, World!")

# Print multiple values
x = 10
y = 20
print(x, y)  # 10 20

# Print with separator
print("apple", "banana", "orange", sep=", ")  # apple, banana, orange

# Print with end character
print("Hello", end=" ")
print("World")  # Hello World (on same line)

# F-strings
name = "Alice"
age = 25
print(f"{name} is {age} years old")

# String formatting
print("Name: {}, Age: {}".format("Bob", 30))

# Old style formatting
print("Number: %d, Float: %.2f" % (42, 3.14159))
```

### Input Function
Get user input from console.

```python
# Basic input (returns string)
name = input("Enter your name: ")
print(f"Hello, {name}!")

# Input with type conversion
age = int(input("Enter your age: "))
print(f"Next year you'll be {age + 1}")

# Input multiple values
x, y = input("Enter two numbers (comma-separated): ").split(',')
x = int(x)
y = int(y)
print(f"Sum: {x + y}")

# Error handling with input
while True:
    try:
        age = int(input("Enter your age: "))
        if age < 0:
            print("Age cannot be negative")
            continue
        break
    except ValueError:
        print("Please enter a valid number")
```

### File I/O
Read from and write to files.

```python
# Write to file
file = open("myfile.txt", "w")
file.write("Hello, World!\n")
file.write("Python is awesome!")
file.close()

# Read from file
file = open("myfile.txt", "r")
content = file.read()
print(content)
file.close()

# Better approach using 'with' statement
with open("myfile.txt", "r") as file:
    for line in file:
        print(line.strip())

# Append to file
with open("myfile.txt", "a") as file:
    file.write("\nThis is a new line")
```

---

## Logical Operators

### AND Operator
Both conditions must be True.

```python
# Basic AND
x = 5
print(x > 0 and x < 10)  # True
print(x > 5 and x < 10)  # False

# Practical example
age = 25
has_license = True

if age >= 18 and has_license:
    print("You can drive")

# Multiple AND conditions
score = 85
if score >= 80 and score <= 100:
    print("Good score!")
```

### OR Operator
At least one condition must be True.

```python
# Basic OR
x = 5
print(x < 0 or x > 0)    # True
print(x < 0 or x > 10)   # False

# Practical example
day = "Saturday"
if day == "Saturday" or day == "Sunday":
    print("It's a weekend!")

# Multiple OR conditions
grade = 'A'
if grade == 'A' or grade == 'B' or grade == 'C':
    print("Passing grade")
```

### NOT Operator
Reverses the boolean value.

```python
# Basic NOT
x = True
print(not x)  # False
print(not False)  # True

# Practical example
is_raining = False
if not is_raining:
    print("We can go outside")

# NOT with conditions
x = 5
if not (x > 10):  # If x is NOT greater than 10
    print("x is 10 or less")
```

### Combining Logical Operators
```python
# AND and OR together
age = 25
has_job = True
has_house = False

if (age >= 25 and has_job) or has_house:
    print("Loan approved")

# Complex conditions
x = 15
if (x > 10 and x < 20) or x == 0:
    print("x is between 10 and 20, or x is 0")

# Short-circuit evaluation (AND)
def check_positive(x):
    print(f"Checking {x}")
    return x > 0

x = -5
result = (x > 0) and check_positive(x)
# check_positive() is NOT called because x > 0 is False

# Short-circuit evaluation (OR)
result = (x > 0) or check_positive(x)
# check_positive() IS called because x > 0 is False
```

---

## Arithmetic Operators

### Addition (+)
```python
x = 10
y = 3
print(x + y)      # 13

# String concatenation
name1 = "John"
name2 = "Doe"
print(name1 + " " + name2)  # John Doe

# List concatenation
list1 = [1, 2]
list2 = [3, 4]
print(list1 + list2)  # [1, 2, 3, 4]
```

### Subtraction (-)
```python
x = 10
y = 3
print(x - y)      # 7

# Works with negative results
a = 5
b = 10
print(a - b)      # -5
```

### Multiplication (*)
```python
x = 10
y = 3
print(x * y)      # 30

# String repetition
word = "Hello"
print(word * 3)   # HelloHelloHello

# List repetition
lst = [1, 2]
print(lst * 2)    # [1, 2, 1, 2]
```

### Division (/)
Always returns a float.

```python
x = 10
y = 3
print(x / y)      # 3.3333...

# Division always returns float
print(10 / 2)     # 5.0
print(10 / 4)     # 2.5
```

### Floor Division (//)
Returns integer by rounding down.

```python
x = 10
y = 3
print(x // y)     # 3

# Works with negative numbers too
print(-10 // 3)   # -4
print(10 // -3)   # -4
```

### Modulus (%)
Returns remainder after division.

```python
x = 10
y = 3
print(x % y)      # 1

# Check even and odd
if x % 2 == 0:
    print("Even")
else:
    print("Odd")

# Practical examples
print(10 % 3)     # 1
print(15 % 4)     # 3
print(20 % 5)     # 0
```

### Exponentiation (**)
Power or exponent.

```python
x = 10
y = 3
print(x ** y)     # 1000 (10^3)

# Square root using exponentiation
print(16 ** 0.5)  # 4.0

# Other examples
print(2 ** 3)     # 8
print(2 ** 0)     # 1
print(2 ** -1)    # 0.5
```

### Order of Operations (PEMDAS)
```python
# Parentheses, Exponents, Multiplication/Division, Addition/Subtraction
result = 2 + 3 * 4
print(result)     # 14 (not 20)

result = (2 + 3) * 4
print(result)     # 20

result = 2 + 3 ** 2
print(result)     # 11 (2 + 9)

result = 10 - 3 + 2
print(result)     # 9 (left to right)

result = 20 / 4 * 2
print(result)     # 10.0 (left to right)
```

### Compound Assignment Operators
```python
x = 10

x += 5     # x = x + 5
print(x)   # 15

x -= 3     # x = x - 3
print(x)   # 12

x *= 2     # x = x * 2
print(x)   # 24

x /= 4     # x = x / 4
print(x)   # 6.0

x //= 2    # x = x // 2
print(x)   # 3.0

x %= 2     # x = x % 2
print(x)   # 1.0

x **= 3    # x = x ** 3
print(x)   # 1.0
```

---

## Break & Continue

### Break Statement
Exit/terminate the loop.

```python
# Break in for loop
for i in range(10):
    if i == 5:
        print(f"Breaking at {i}")
        break
    print(i)

# Break in while loop
count = 0
while True:
    print(count)
    count += 1
    if count == 5:
        break

# Break with list
fruits = ["apple", "banana", "orange", "grape"]
for fruit in fruits:
    if fruit == "orange":
        print(f"Found {fruit}, breaking...")
        break
    print(fruit)
```

### Continue Statement
Skip the current iteration and continue to next.

```python
# Continue in for loop
for i in range(5):
    if i == 2:
        continue  # Skip i=2
    print(i)  # Prints 0, 1, 3, 4

# Continue in while loop
count = 0
while count < 5:
    count += 1
    if count == 3:
        continue
    print(count)  # Prints 1, 2, 4, 5

# Continue with conditions
for i in range(10):
    if i % 2 == 0:  # Skip even numbers
        continue
    print(i)  # Prints 1, 3, 5, 7, 9
```

### Break vs Continue - Comparison
```python
print("Using BREAK:")
for i in range(5):
    if i == 3:
        break
    print(i)
# Output: 0, 1, 2

print("\nUsing CONTINUE:")
for i in range(5):
    if i == 3:
        continue
    print(i)
# Output: 0, 1, 2, 4
```

### Nested Loops with Break/Continue
```python
# Break only breaks inner loop
for i in range(3):
    for j in range(3):
        if j == 1:
            break
        print(f"({i}, {j})")
# Breaks inner loop, outer continues

# Continue affects current loop
for i in range(3):
    for j in range(3):
        if j == 1:
            continue
        print(f"({i}, {j})")
```

### Practical Examples
```python
# Find a number in list
numbers = [10, 20, 30, 40, 50]
search = 30

for num in numbers:
    if num == search:
        print(f"Found {search}")
        break
else:
    print(f"{search} not found")

# Skip invalid entries
data = [1, -5, 3, 0, 4, -2, 6]
for value in data:
    if value <= 0:
        continue
    print(f"Processing {value}")

# Exit on error condition
while True:
    user_input = input("Enter 'quit' to exit: ")
    if user_input.lower() == 'quit':
        print("Exiting...")
        break
    print(f"You entered: {user_input}")
```

---

## Summary

| Topic | Key Points |
|-------|-----------|
| **Data Types** | int, float, str, bool - fundamental types |
| **If-Else** | Control flow based on conditions |
| **Loops** | For and While loops for iteration |
| **Try-Except** | Error handling and exception management |
| **Scoping** | Local, global, nonlocal variable scopes |
| **Type Casting** | Converting between different data types |
| **Input/Output** | Reading input and printing output |
| **Logical Operators** | and, or, not for boolean logic |
| **Arithmetic Operators** | +, -, *, /, //, %, ** operations |
| **Break/Continue** | Control loop execution flow |

---

## Practice Tips

1. **Type in examples**: Don't just read, write and run the code yourself
2. **Experiment**: Modify examples and see what happens
3. **Combine concepts**: Mix topics (e.g., loops with conditionals)
4. **Debug**: Use print() to understand flow and values
5. **Practice problems**: Apply concepts to solve real problems
