class ParentClass
    def a_method
      puts 'b'
    end
  end
  class SomeClass < ParentClass  # < means inherit (or "extends" if you are from Java background)
    def another_method
      puts 'a'
    end
  end
  instance = SomeClass.new
  instance.another_method # => "a"
  instance.a_method       # => "b"