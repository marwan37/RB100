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

zero = 0
puts "Before each call"
zero.each { |element| puts element } rescue puts "Can't do that!"
puts "After each call"
