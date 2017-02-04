age = 22
if age > 21
  puts "Welcome to the party"
else
  puts "Not yet"
end

number = 15
if number % 3 == 0 && number % 5 == 0
  puts "FizzBuzz"
elsif number % 3 == 0
  puts "Fizz"
elsif number % 5 == 0
  puts "Buzz"
end

if !(age < 21)
  puts "Welcome to the party"
else
  puts "Not yet"
end

unless age < 21
  puts "Welcome to the party"
else
  puts "Not yet"
end

if ""
  puts "I am positive"
end
if 0
  puts "I am positive"
end

unless nil
  puts "I am negative"
end
unless false
  puts "I am negative"
end
puts "8"*20
puts "I am positive" if "hello"
puts "I am positive" if 24
puts "I am negative" unless nil
puts "I am negative" unless false