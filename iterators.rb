# .any? {|obj| block} -> true or false
puts ["ant", "bear", "cat"].any? {|word| word.length >= 3}

# .each -> calls block once for each element in self, passing that element as a parameter.
["ant", "bear", "cat"].each {|word| print word, "--\n"}

# .collect {|obj| block} -> array; 
# returns a new array with the results of running block once for every element in enum
arr = (1..4).collect {|i| i*i}
puts arr.to_s
print arr, "\n"

arr2 = (1..4).collect { "cat" }
print arr2, "\n"

# .map {|obj| block} -> enumerator; 
# returns a new array with the results of running block once for every element in enum. 
# it's exactly like .collect

# .detect/.find -> enumerator; 
# returns the first for which block is not false.
a = (1..10).find { |i| i %5 == 0 and i % 7 == 0 }
puts a.class

puts (1..100).detect { |i| i %5 == 0 and i % 7 == 0 }

# .find_all {|obj| block} or .select {|obj| block} ; 
# returns an array containing all elements of enum for which block is not false
puts (1..10).find_all { |i| i % 3 == 0 }.to_s

# .reject {|obj| block} -> opposite of find_all
puts (1..10).reject { |i| i % 3 == 0 }.to_s

# .upto(limit) -> iterates block up to the int number
5.upto(10) { |i| print i, " " }

