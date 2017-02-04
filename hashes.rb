grades = { "Jane Doe" => 10, "Jim Doe" => 6 }
puts grades
options = { :font_size => 10, :font_family => "Arial" }
puts options
options = { font_size: 10, font_family: "Arial" }
puts options

puts options[:font_size]  # => 10

grade = Hash.new
grade["Dorothy Doe"] = 9
puts grade
grades = Hash.new(0)
puts grades
grades = {"Timmy Doe" => 8}
puts grades.to_s + " 1"
grades.default = 0

puts grades.default
puts grades["Jane Doe"] # => 0

books = {}
# .empty? => returns true if hash contains no key-value pairs
puts books.empty?

books[:matz]  = "The Ruby Language"
books[:black] = "The Well-Grounded Rubyist"
print books, "\n"

# .has_key?(key) => true or false
puts books.has_key?(:matz)

# .has_value?(value) => true or false
puts books.has_value?("str")
# .delete(key) => deletes and returns a value associated with the key
h = {:first_name => "Coding", :last_name => "Dojo"}
h.delete(:last_name)
print h, "\n"      #=> [:first_name, "Coding"]

class Person
  def self.create(params)
  @name = params[:name]
  @age  = params[:age]
  end 
end

Person.create(name: "John Doe", age: 27)

hh = { "a" => 100, "b" => 200 }
hh.each {|key, value| puts "#{key} is #{value}" }

hhh = { "a" => 100, "b" => 200, "c" => 300 }
puts hhh.select {|k,v| k > "a"}  #=> {"b" => 200, "c" => 300}
puts hhh.select {|k,v| v < 200}  #=> {"a" => 100}

def test
  puts "hello"
end

test

a = {:first_name => "Michael", :last_name => "Choi"}
b = {:first_name => "John", :last_name => "Supsupin"}
c = {:first_name => "KB", :last_name => "Tonel"}
d = {:first_name => "Jessie", :last_name => "De Leon"}
e = {:first_name => "Jaybee", :last_name => "Balog"}
names = [a, b, c, d, e]
puts names.to_s
# names.each {|elem| puts "The name is '#{elem[:first_name]} #{elem[:last_name]}'" }
def mynames l
  puts "hey"
  puts "You have #{l.length} names in the 'names' array"
  l.each {|elem| puts "The name is '#{elem[:first_name]} #{elem[:last_name]}'" }
end
mynames names

