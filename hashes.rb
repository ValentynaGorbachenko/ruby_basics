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
puts books.empty?
books[:matz]  = "The Ruby Language"
books[:black] = "The Well-Grounded Rubyist"
print books, "\n"
puts books.has_key?(:matz)
puts books.has_value?("str")
# .delete(key) => deletes and returns a value associated with the key
h = {:first_name => "Coding", :last_name => "Dojo"}
h.delete(:last_name)
print h, "\n"      #=> [:first_name, "Coding"]

# .empty? => returns true if hash contains no key-value pairs
# .has_key?(key) => true or false
# .has_value?(value) => true or false

class Person
  def self.create(params)
  @name = params[:name]
  @age  = params[:age]
  end 
end

Person.create(name: "John Doe", age: 27)

