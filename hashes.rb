Creating a hash
new_hash = { name: 'bob' }
person = { height: '6 ft', weight: '160 lbs' }

Adding something to an existing hash
person[:hair] = 'brown'
# => {:height=>'6 ft', :weight=>'160 lbs', :hair=>'brown'}
person[:age] = 62
# => {:height=>'6 ft', :weight=>'160 lbs', :hair=>'brown', :age=>62}

Removing something from an existing hash
person.delete(:age)
# => {:height=>'6 ft', :weight=>'160 lbs', :hair=>'brown'}

Retrieving information from an existing hash
person[:weight]
# => "160 lbs"

Merging two hashes together
person.merge!(new_hash)
# => {:height=>'6 ft', :weight=>'160 lbs', :hair=>'brown', :name=>'bob'}

Iterating over hash
person.each do |key, value|
  puts "Bob's #{key} is #{value}"
end
# Bob's name is bob
# Bob's height is 6 ft
# Bob's weight is 160 lbs
# Bob's hair is brown

Optional parameters in hash method
def greeting(name, options = {})
  if options.empty?
    puts "Hi, my name is #{name}"
  else
    puts "Hi, my name is #{name} and I'm #{options[:age]} years old and I live in #{options[:city]}"
  end
end
greeting("Bob")
greeting("Bob", {age:62, city: "New York City"})
#or (curly braces{} not required when hash is the last argument)
greeting("Bob", age: 62, city: "New York City")

Key? to check whether a hash contains a specific key
name_and_age = { "Bob" => 42, "Steve" => 31, "Joe" => 19}
name_and_age.key?("Steve") # => true
name_and_age.key?("Larry") # => false

Select method allows you to pass a block and will return any key-value pairs that evaluate to true
name_and_age.select { |k,v| k == "Bob" } # => {"Bob"=>42}
name_and_age.select { |k,v| (k == "Bob") || (v == 19) }
# => {"Bob"=>42, "Joe"=>19}

Fetch method allows you to pass a key and return a value for that key if it exists
name_and_age.fetch("Steve") # => 31
name_and_age.fetch("Larry") # => KeyError: key not found: "Larry"
name_and_age.fetch("Larry", "Larry isn't in this hash") # => "Larry isn't in this hash"

Retrieve Keys or Values
name_and_age.keys # => ["Bob", "Steve", "Joe"]
name_and_age.values # => [42, 31, 19]