class LinkedList
  def initialize(value=nil)
    head_node = Node.new(value)
  end

  def append(value)
  end

  def prepend(value)
  end

  def size
  end

  def head
  end
  
  def tail
  end

  def at(index)
  end

  def contains?(value)
  end

  def find(value)
  end

  def to_s
  end
end

class Node
  attr_accessor :value

  def initialize(value=nil, next_node=nil)
    @value = value
    @next_node = next_node
  end

  def next_node
  end
end