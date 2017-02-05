class User
  # attr_reader :first_name, :last_name
  # attr_writer :first_name, :last_name
  # the same is below 
  @@years_old = 0
  attr_accessor :first_name, :last_name
  def initialize(f_name, l_name)
    @first_name = f_name
    @last_name = l_name
  end
  def my_name_is
    puts "My name is #{@first_name} #{@last_name}"
  end
  def how_old_are_you
    find_access
    puts "I am #{@@years_old} years old"
  end
  def self.get_years
    puts "default is #{@@years_old}"
  end
  protected
  def protected_method
    puts "I am protected method"
  end
  private
  def find_access
    protected_method
    my_name_is
  end
end
steph = User.new("Stephen", "Curry")
puts steph.first_name + " " + steph.last_name
steph.my_name_is
steph.how_old_are_you
User.get_years
