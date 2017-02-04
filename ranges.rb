range  = Range.new(0,5)
puts range
puts range.to_a.to_s

case 79
when 1..50   then   print "low\n"
when 51..75  then   print "medium\n"
when 76..100 then   print "high\n"
end

arr = [0, 4, 7, 10, 12]
puts (0...arr.size).bsearch {|i| arr[i] >= 4 } #=> 1
puts (0...arr.size).bsearch {|i| arr[i] >= 6 } #=> 2
puts (0...arr.size).bsearch {|i| arr[i] >= 8 } #=> 3
puts (0...arr.size).bsearch {|i| arr[i] >= 100 }.class #=> nil

# .member?(val) => true or false
puts range.member?(8)
puts range.member?(2)

# .include?(value) => true or false
puts range.include?(4)

# .first
puts range.first
puts range.first(3).to_s

# .last => returns the last object in range
puts range.last(2).to_s

# .max => returns the maximum value in range
puts range.max

# .min => returns the minimum value in rang
puts range.min