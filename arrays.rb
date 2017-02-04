puts "Arrays practice"
k = Array.new(10)
puts k.to_s
  
arr_str = Array("a"..."z")
arr_str << "z"
puts "arr_str = Array(\"a\"...\"z\"); arr_str << \"z\" => #{arr_str} \n\n"

arr = Array(0...10)
puts "arr = Array(0...10) => " + arr.to_s

puts "arr.count; arr.size; arr.lenght => " + arr.length.to_s + "\n\n"


arr2 = arr_str.slice(0,5)
puts "arr2 = arr_str.slice(0,5) => #{arr2} \n"

puts "\nfor i in 0...arr2.length
  puts i
end"

for i in 0...arr2.length
  puts i
end

puts "\nfor i in arr2
  puts i
end"
for i in arr2
  puts i
end

puts "\narr2.each{|i| puts i}"
arr2.each{|i| puts i}

arr3 = arr2.each{|i| puts i}
puts "\narr3 = arr2.each{|i| puts i} => #{arr3} and arr2 is #{arr2}"

arr4 = arr2.map{|i| puts i}
puts "\narr4 = arr2.map{|i| puts i} => #{arr4} and arr2 is #{arr2}"

arr5 = arr2.map! {|i| puts i}
puts "\narr5 = arr2.map! {|i| puts i} => #{arr5} and arr2 is #{arr2}"
 
# .push .insert .pop .delete .slice .join .shuffle .sort .reverse .index .at .fetch .fill .flatten