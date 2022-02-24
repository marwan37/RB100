# RB100 EXERCISES

#1. Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr.each { |x| puts x}

#2. Same as above, but only print out values greater than 5.
arr.each { |x| puts x if x > 5}

#3. Now, using the same array from #2, use the select method to extract all odd numbers into a new array.
new_arr = arr.select { |x| (x > 5) && (x%2 != 0)}

#4. Append 11 to the end of the original array. Prepend 0 to the beginning.
arr.push(11)
arr.unshift(0)

#5. Get rid of 11. And append a 3.
arr.pop # or arr.delete(11)
arr.push(3) # or arr << 3

#6. Get rid of duplicates without specifically removing any one value.
arr.uniq

#7. Create a Hash, with one key-value pair, using both Ruby syntax styles
animals = { felines: "cat", amphibians: "frog" } # => new version
animals = { :felines => "cat", :amphibians => "frog"} # => old version

#8. Suppose you have a hash 
h = {a:1, b:2, c:3, d:4}
# Get the value of key `:b`.
h[:b]
# Add to this hash the key:value pair `{e:5}`
h[:e] = 5
# Remove all key:value pairs whose value is less than 3.5
h.delete_if { |k, v| v < 3.5 }

#9. Given the following data structures, write a program that copies the information from the array into the empty hash that applies to the correct person.
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
fields = [:email, :address, :phone]

contacts.each_with_index do |(name, hash), idx|
  fields.each do |field|
    hash[field] = contact_data[idx].shift 
  end
end
p contacts
    
# Expected output:
#  {
#    "Joe Smith"=>{:email=>"joe@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"},
#    "Sally Johnson"=>{:email=>"sally@email.com", :address=>"404 Not Found Dr.",  :phone=>"123-234-3454"}
#  }

#10. Using the hash you created from the previous exercise, demonstrate how you would access Joe's email and Sally's phone number.
contacts["Joe Smith"][:email]
contacts["Sally Johnson"][:phone]

#11. Use Ruby's Array method delete_if and String method start_with? to delete all of the strings that begin with an "s" in the following array.
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if { |a| a.start_with? "s" }
# Then recreate the arr and get rid of all of the strings that start with "s" or starts with "w".
arr.delete_if { |a| a.start_with?("s", "w") }
p arr

#12. Take the following array and turn it into a new array that consists of strings containing one word. 
a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']
a = a.map { |words| words.split }
a = a.flatten
p a