puts 'I am in the cat file'
require_relative 'mammal'
class Cat < Mammal
  def jerk
    puts "scraching you"
    self
  end
  def speak  
    puts "Meow" 
    self 
  end  
  def who_am_i
    puts self
    self
  end
end

my_cat = Cat.new
puts my_cat.alive
my_cat.breathe.who_am_i.speak.jerk
