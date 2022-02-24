# EXAMPLE 1
names = ['bob', 'joe', 'steve', nil, 'frank']
names.each do |name|
  begin
    puts "#{name}'s name has #{name.length} letters in it."
  rescue
    puts "Something went wrong!"
  end
end
# bob's name has 3 letters in it.
# joe's name has 3 letters in it.
# steve's name has 5 letters in it.
# Something went wrong!
# frank's name has 5 letters in it.

# EXAMPLE 2
zero = 0
puts "Before each call"
zero.each { |element| puts element } rescue puts "Can't do that!"
puts "After each call"
# Before each call
# Can't do that!
# After each call

# EXAMPLE 3
def divide(number, divisor)
  begin
    answer = number / divisor
  rescue ZeroDivisionError => e
    puts e.message
  end
end
puts divide(16, 4)
puts divide(4, 0)
puts divide(14, 7)
# 4
# divided by 0
# 2