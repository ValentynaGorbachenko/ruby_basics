require_relative 'printer_module'
class Array
  include Printer
end
class String
  include Printer
end
[1,2,3].print_each_element
"hello".print_each_element
puts Class.superclass # => Module
puts Array.ancestors.to_s  # => [Array, Printer, Enumerable, Object, Kernel, BasicObject]
puts String.ancestors.to_s # => [String, Printer, Comparable, Object, Kernel, BasicObject]
puts Hash.ancestors.to_s   # => [Hash, Enumerable, Object, Kernel, BasicObject]
puts Fixnum.ancestors.to_s # => [Fixnum, Integer, Numeric, Comparable, Object, Kernel, BasicObject]