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
    @data_store.push(item)
    @back = item
    self
  end
  def pop
    @data_store.pop if !self.is_empty
  end
end
