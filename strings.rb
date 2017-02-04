puts "Strings practice"

puts "I am a string.class => " + "I am a string".class.to_s

puts "\"foo = \%{foo}\" \% {:foo => 'bar'} => " + "foo = %{foo}" % {:foo => 'bar'}

puts "hello from + self.to_s => " +"hello from "+ self.to_s

puts "'string'*5 => "+ "Strings"*5

str = "valia"
puts "str = \"valia\""

puts "str.capitalize => "+ str.capitalize
puts "str => " + str

puts "str.capitalize! => "+ str.capitalize!
puts "str => " + str

puts "str<<str => " +str<<str

puts "str.concat('5') =>"+str.concat('5')+ " and str is #{str}"

puts "str.empty? => #{str.empty?}" 

puts "''.empty? => #{''.empty?}"

puts "str.split => #{str.split} and str is #{str}"

puts "str.split('') => #{str.split('')} and str is #{str}"


