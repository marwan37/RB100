array = [1, 'Bob', 4.33, 'another string']

array.first # => 1

array.last  # => 'another string'

array[2]    # => 4.33

array.pop   # => takes out last item off the array permanently 'another string'
array       # => [1, 'Bob', 4.33]
#pop is destructive

array.push("another string") # => [1, "Bob", 4.33, "another string"]
array.pop # => [1, 'Bob', 4.33]
array << "another string" # => [1, "Bob", 4.33, "another string"]

a = [1, 2, 3, 4]
a.map { |num| num**2 }  # => [1, 4, 9, 16]
a.collect { |num| num**2 }  # => [1, 4, 9, 16]
# map and collect aren't destructive (i.e., they don't mutate the caller)
a   # => [1, 2, 3, 4]
a.delete_at(1) # => 2
a     # => [1, 3, 4]

my_pets = ["cat", "dog", "bird", "cat", "snake"]
my_pets.delete("cat") # => "cat"
my_pets # => ["dog", "bird", "snake"]

b = [1, 1, 2, 2, 3, 3, 4, 4]
b.uniq # => [1, 2, 3, 4]
b # => [1, 1, 2, 2, 3, 3, 4, 4]
# b.uniq is not destructive, it returns a new array with duplicates removed
b.uniq! # => [1, 2, 3, 4]
b # => [1, 2, 3, 4]
# simply appending ! to uniq turns it into a destructive operation

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
numbers.select { |number| number > 4 }
# => [5, 6, 7, 8, 9, 10]

c = [2, 3, 4]
c.pop # => [2, 3]
c.unshift(1) # => [1, 2, 3]
# unshift adds values to the beginning of the array (unlike push)

d = [1, 2, 3, 4, 5]
d.include?(3)
# => true

e = [1, 2, [3, 4, 5], [6, 7]]
e.flatten
# => [1, 2, 3, 4, 5, 6, 7]  not destructive

f = [1, 2, 3, 4, 5]
f.each_index { |i| puts "This is index #{i}" }
This is index 0
This is index 1
This is index 2
This is index 3
This is index 4
f.each { |i| puts "This is index #{i}" }
This is index 1
This is index 2
This is index 3
This is index 4
This is index 5

g = [1, 2, 3, 4, 5]
g.each_with_index { |val, idx| puts "#{idx+1}. #{val}" }
# 1. 1
# 2. 2
# 3. 3
# 4. 4
# 5. 5

h = [5, 3, 8, 2, 4, 1]
h.sort
# => [1, 2, 3, 4, 5, 8]

[1, 2, 3].product([4, 5])
# => [[1, 4], [1, 5], [2, 4], [2, 5], [3, 4], [3, 5]]

