

# p "Please enter a number between 0 and 100"
# number = gets.chomp.to_i

# if num < 0
#   p "You can't enter a negative number!"
# elsif number <= 50
#   p "#{number} is between 0 and 50"
# elsif number <= 100
#   p "#{number} is between 51 and 100"
# else
#   p "#{number} is above 100"
# end


y = 9
x = 10
if (x + 1) <= (y)
  puts "Alright."
elsif (x + 1) >= (y)
  puts "Alright now!"
elsif (y + 1) == x
  puts "ALRIGHT NOW!"
else
  puts "Alrighty!"
end