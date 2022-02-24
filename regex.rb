Regex

We can use the =~ operator to check whether a string exists
"powerball" =~ /b/
# => 5
def has_a_b?(string)
  if string =~ /b/
    puts "we have a match!"
  else
    puts "No match here."
  end
end
has_a_b?("basketball") # => We have a match!
has_a_b?("football") # => We have a match!
has_a_b("hockey") # => No match here.
has_a_b("golf") # => No match here.

We can also use the match operator
/b/.match("powerball")
=> #<MatchData "b">
def has_a_b?(string)
  if string =~ /b/
    puts "we have a match!"
  else
    puts "No match here."
  end
end
has_a_b?("basketball") # => We have a match!
has_a_b?("football") # => We have a match!
has_a_b("hockey") # => No match here.
has_a_b("golf") # => No match here.


Math 
Math.sqrt(400) # => 20.0
Math::PI # => 3.141592653589793

Time
t = Time.new(2008, 7, 4)
# => 2008-07-04 00:00:00 -0400
t.monday? # => false
t.friday? # => true





