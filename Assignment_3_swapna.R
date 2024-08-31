# User input in R Programming Language
user_input = readline(prompt = "Enter an integer: ") 
# Convert the input to an integer 
user_integer = as.integer(user_input)

# 1. Write a program to read Celsius temperature and print equivalent Fahrenheit 
# temperate on screen using R.  

# Function to convert Celsius to Fahrenheit
celsius_to_fahrenheit <- function(celsius) {
  (celsius * 9/5) + 32
}

# Take Celsius temperature as input
celsius <- as.numeric(readline(prompt="Enter Celsius temperature: "))

# Convert Celsius to Fahrenheit and print
fahrenheit <- celsius_to_fahrenheit(celsius)
print(paste("The equivalent Fahrenheit temperature is:", fahrenheit))

# 2. Read radius of the circle from user and find the area and perimeter of it using R.

# Read radius from user
radius <- as.numeric(readline(prompt = "Enter the radius of the circle: "))

# Calculate area and perimeter
area <- pi * radius^2
perimeter <- 2 * pi * radius

# Print the results
cat("The area of the circle is:", area, "\n")
cat("The perimeter of the circle is:", perimeter, "\n")

#3. Read the amount and percentage of interest from the keyboard and find final 
# amount after adding interest in original amount using R

# Read original amount and interest percentage from user
original_amount <- as.numeric(readline(prompt = "Enter the original amount: "))
interest_percentage <- as.numeric(readline(prompt = "Enter the interest percentage: "))

# Calculate final amount after adding interest
final_amount <- original_amount * (1 + interest_percentage/100)

# Print the final amount
cat("The final amount after adding interest is:", final_amount, "\n")

#4. Write a program to read distance value in meters and convert it into centimeters, 
#inches, and yards using R.

# Read distance in meters from user
distance_meters <- as.numeric(readline(prompt = "Enter the distance in meters: "))

# Convert to centimeters
distance_centimeters <- distance_meters * 100

# Convert to inches
distance_inches <- distance_meters * 39.3701

# Convert to yards
distance_yards <- distance_meters * 1.09361

# Print the results
cat("Distance in centimeters:", distance_centimeters, "cm\n")
cat("Distance in inches:", distance_inches, "in\n")
cat("Distance in yards:", distance_yards, "yd\n")

#5. Write a Python program to calculate profit or loss. Input is selling cost and actual 
# cost of a product using R.
# Read selling cost and actual cost from user
selling_cost <- as.numeric(readline(prompt = "Enter the selling cost of the product: "))
actual_cost <- as.numeric(readline(prompt = "Enter the actual cost of the product: "))

# Calculate profit or loss
profit_loss <- selling_cost - actual_cost

# Determine if it's a profit or loss
if (profit_loss > 0) {
  cat("You made a profit of", profit_loss, "on this product.\n")
} else if (profit_loss < 0) {
  cat("You incurred a loss of", abs(profit_loss), "on this product.\n")
} else {
  cat("You broke even - no profit, no loss.\n")
}

# 6. Write a program to input basic salary and find output of gross salary using following:
# DA = 75% of basic
# HRA = 20% of basic
#Conditions:
#  Basic < 10000  :   gross = da + basic
# Basic >= 10000 and < 20000 : gross = da + basic + 50% of hra
# Basic >= 20000 : gross = basic + da + hra
# Sample: Input and Output
# 5000 :  3750 + 5000 = 8750
# 12000 :  9000 + 12000 + 1200 = 22200
# 24000 :  18000 + 24000 + 4800 = 46800

# Read basic salary from the user
basic_salary <- as.numeric(readline(prompt = "Enter the basic salary: "))

# Calculate DA and HRA
DA <- 0.75 * basic_salary
HRA <- 0.20 * basic_salary

# Calculate the gross salary based on conditions
if (basic_salary < 10000) {
  gross_salary <- DA + basic_salary
} else if (basic_salary >= 10000 & basic_salary < 20000) {
  gross_salary <- DA + basic_salary + 0.5 * HRA
} else {
  gross_salary <- basic_salary + DA + HRA
}

# Print the gross salary
cat("The gross salary is:", gross_salary, "\n")


# 7. Write a program to read a number from user and find the factorial of the number using R.
# Example: Factorial for 5 = 5 x 4 x 3 x 2 x 1 = 120

# Read a number from the user
num <- as.integer(readline(prompt = "Enter a number to calculate its factorial: "))

# Function to calculate factorial
calculate_factorial <- function(n) {
  if (n == 0) {
    return(1)
  } else {
    return(n * calculate_factorial(n - 1))
  }
}

# Calculate the factorial of the number
factorial_result <- calculate_factorial(num)

# Print the factorial result
cat("Factorial for", num, " = ", paste(seq(num, 1), collapse = " x "), " = ", factorial_result, "\n")


# 8. Write a program to read num1 and num2 from keyboard and find addition of all 
# number between that range using R.    

# Read num1 and num2 from the keyboard
num1 <- as.integer(readline(prompt = "Enter the first number (num1): "))
num2 <- as.integer(readline(prompt = "Enter the second number (num2): "))

# Initialize the sum
sum_of_numbers <- 0

# Find the addition of all numbers between the range
for (i in num1:num2) {
  sum_of_numbers <- sum_of_numbers + i
}

# Print the result
cat("The addition of all numbers between", num1, "and", num2, "is", sum_of_numbers, "\n")


# 9. Write a program to read a number from user. Create and use a user defined 
# function to check whether it is odd or even using R


# Function to check if a number is odd or even
check_odd_even <- function(number) {
  if (number %% 2 == 0) {
    return("even")
  } else {
    return("odd")
  }
}

# Read a number from the user
input_number <- as.integer(readline(prompt = "Enter a number to check if it's odd or even: "))

# Call the user-defined function
result <- check_odd_even(input_number)

# Print the result
cat("The number", input_number, "is", result, "\n")






