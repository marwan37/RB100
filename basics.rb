# 1. Add two strings together that, when concatenated, return your first and last name as your full name in one string.

puts "Marwan " + "Zaarab"

# 2. Use the modulo operator, division, or a combination of both to take a 4 digit number and find the digit in the: 

#1) thousands place  
puts 1234 / 1000
# 2) hundreds place
puts 1234 % 1000 / 100
# 3) tens place 
puts 1234 % 100 / 10
# 4) ones place
puts 1234 % 10

# 3. Write a program that uses a hash to store a list of movie titles with the year they came out. Then use the puts command to make your program print out the year of each movie to the screen.

movies = {
  Casino: 1995,
  Goodfellas: 1990,
  Spiderman: 2001,
  Batman: 2022,
  Superman: 1978
}

movies.each { |key, value| puts value }

# 4. Use the dates from the previous example and store them in an array. Then make your program output the same thing as exercise 3.
dates_array = []
movies.each do 
  |key, value| dates_array.push(value)
end
puts dates_array

# LS Solution
dates = [1995, 1990, 2001, 2022, 1978]
puts dates[0]
puts dates[1]
puts dates[2]
puts dates[3]
puts dates[4]

# 5. Write a program that outputs the factorial of the numbers 5, 6, 7, and 8.
puts 5 * 4 * 3 * 2 * 1
puts 6 * 5 * 4 * 3 * 2 * 1
puts 7 * 6 * 5 * 4 * 3 * 2 * 1
puts 8 * 7 * 6 * 5 * 4 * 3 * 2 * 1

#6. Write a program that calculates the squares of 3 float numbers of your choosing and outputs the result to the screen.
puts 3.0 * 3.0 
puts 3.7 * 3.7 
puts 7.94 * 7.94

