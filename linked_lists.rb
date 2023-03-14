class LinkedList
  attr_accessor :head_node

  def initialize(value=nil)
    @head_node = nil
  end

  def append(value)
    if (@head_node.nil?)
      @head_node = Node.new(value)
    else
      last_node = @head_node
      while (last_node.next_node != nil)
        last_node = last_node.next_node
      end
      last_node.next_node = Node.new(value)
    end
  end

  def prepend(value)
    if (@head_node.nil?)
      @head_node = Node.new(value)
    else
      prepended_node = Node.new(value, @head_node)
      @head_node = prepended_node
    end
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
  attr_accessor :value, :next_node

  def initialize(value=nil, next_node=nil)
    @value = value
    @next_node = next_node
  end
end