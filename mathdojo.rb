class MathDojo
  attr_accessor :result
  def initialize
    @result = 0
  end
  def add(arg, *rest)
    if !rest
      @result = @result + arg
    else
      rest.each {|x| @result += x}
      @result = @result + arg
    end
    self
  end
  def substract(arg, *rest)
    if !rest
      @result = @result - arg
    else
      rest.each {|x| @result -= x}
      @result = @result - arg
    end
    self
  end
end
math1 = MathDojo.new
# p math1.result

p math1.add(3,2,2,3).add(-8).substract(3).result

class MathDojo2
  attr_accessor :result
  def initialize
    @result = 0
  end
  def add(arg, *rest)
    if !rest
      add_arg arg
    else
      add_arg(arg)
      add_arg(rest)
    end
    self
  end
  def substract(arg, *rest)
    if !rest
      sub_arg arg
    else
      sub_arg arg
      sub_arg rest
    end
    self
  end
  private
  def add_arg(arg)
    if arg.kind_of? Array
      # check each elem
      arg.each { |x|
        
          if x.kind_of? Integer
            @result += x
          else
            add_arg x
          end
        }
    elsif arg.kind_of? Integer
      @result += arg
    else
      puts "The arguments are not integers or arrays of integers"
    end
  end
  def sub_arg(arg)
    if arg.kind_of? Array
      # check each elem
      arg.each { |x|
        
          if x.kind_of? Integer
            @result -= x
          else
            sub_arg x
          end
        }
    elsif arg.kind_of? Integer
      @result -= arg
    else
      puts "The arguments are not integers or arrays of integers"
    end
  end
end
math2 = MathDojo2.new
# p math2.result
p math2.add([3,2], [-2, 228, "string"]).add([[3,3],-6]).substract(25).result
 
class MathDojo3 < MathDojo2
  def my_func arg
    sub_arg(arg)
  end
end
math3 = MathDojo3.new
p "===="
p math3.my_func(6)
p math3.result
p math3.add([3,2], [-2, 228, "string"]).add([[3,3],-6]).substract(25).result

# multiply_by_the_sum
class MathDojo4
  attr_accessor :result
  def initialize
    @result = 0
  end
  def add(arg, *rest)
    if !rest
      add_arg arg
    else
      add_arg(arg)
      add_arg(rest)
    end
    self
  end
  def substract(arg, *rest)
    if !rest
      sub_arg arg
    else
      sub_arg arg
      sub_arg rest
    end
    self
  end
  def multiply_by_the_sum(arg, *rest)
    prev = self.result
    @result = 0
    cur = self.add(arg, *rest).result
    @result = prev*cur
    self
  end
  def reset
    @result = 1
    self
  end
  private
  def add_arg(arg)
    if arg.kind_of? Array
      # check each elem
      arg.each { |x|
        
          if x.kind_of? Integer
            @result += x
          else
            add_arg x
          end
        }
    elsif arg.kind_of? Integer
      @result += arg
    else
      puts "The arguments are not integers or arrays of integers"
    end
  end
  def sub_arg(arg)
    if arg.kind_of? Array
      # check each elem
      arg.each { |x|
        
          if x.kind_of? Integer
            @result -= x
          else
            sub_arg x
          end
        }
    elsif arg.kind_of? Integer
      @result -= arg
    else
      puts "The arguments are not integers or arrays of integers"
    end
  end
end

class Mathdojo5
 attr_accessor :result
 def initialize
  @result = 0
 end
 def add *numbers
  @result += numbers.flatten.inject(:+)
  return self
 end
 def subtract *numbers
  @result -= numbers.flatten.inject(:+)
  return self
 end
end
math5 = Mathdojo5.new
p math5.add([3,2], [-2, 228]).add([[3,3],-6]).subtract(25).result