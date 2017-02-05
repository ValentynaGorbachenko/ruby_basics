class Stack
  attr_reader :data_store, :back
  def initialize(data_store = Array.new, back = 0)
    @data_store = data_store
    @back = back
  end
  def size
    @data_store.size
  end
  def is_empty
    @data_store.empty?
  end
  def push(item)
    @back = item
    @data_store[self.size] = item
    self
  end
  def pop
    if self.size >= 2
      @back = @data_store.at(self.size-2)
    else
      @back = 0
    end
    @data_store.pop if !self.is_empty
  end
end
