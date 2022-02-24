# arr = [1, 3, 5, 7, 9, 11]
# number = 3

#  arr.include?(number)

arr = ["b", "a"]
arr = arr.product(Array(1..3))
arr.first.delete(arr.first.last)
# => 1 
# arr = [["b"], ["b", 2], ["b", 3],["a", 1], ["a", 2], ["a", 3]]

arr = ["b", "a"]
arr = arr.product([Array(1..3)])
arr.first.delete(arr.first.last)
# => [1, 2, 3]
# => arr = [["b"], ["a", [1, 2, 3]]]

# How do you return the word "example" from the following array?
arr = [["test", "hello", "world"],["example", "mem"]]
arr[1][0]
# or
arr.last.first

arr = [1, 2, 3]
newarr = arr.map { |x| x+2 }
#or
new_arr =[]
arr.each do |n|
  new_arr << n + 2
end

p arr 
p new_arr
