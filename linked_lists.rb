class LinkedList
  attr_reader :head_node

  def initialize
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
    length = 1
    last_node = @head_node
    while (last_node.next_node != nil)
      last_node = last_node.next_node
      length += 1
    end
    return length
  end
  
  def tail
    last_node = @head_node
    while (last_node.next_node != nil)
      last_node = last_node.next_node 
    end
    return last_node
  end

  def at(index)
    current_index = 0
    last_node = @head_node 
    while (current_index < index)
      if (last_node.next_node == nil)
        puts "myList.at(#{index}) does NOT exist..."
        puts "Last Node of List: #{last_node}"
        puts "Index: #{current_index}"
        print "Value: "
        return last_node
      end
      last_node = last_node.next_node
      current_index += 1
    end
    return last_node
  end

  def pop
    last_node = @head_node
    while (last_node.next_node.next_node != nil)
      last_node = last_node.next_node
    end
    last_node.next_node = nil
  end

  def contains?(value)
    return true if @head_node.value == value

    last_node = @head_node
    while (last_node.next_node != nil)
      last_node = last_node.next_node
      return true if last_node.value == value
    end
    return false
  end

  def find(value)
    index = 0
    last_node = @head_node
    while (last_node.value != value)
      if (last_node.next_node == nil)
        return nil
      end
      last_node = last_node.next_node
      index += 1
    end
    return index
  end

  def to_s
    last_node = @head_node
    while (last_node.next_node != nil)
      print "( #{last_node.value} ) -> "
      last_node = last_node.next_node
    end
    puts "( #{last_node.value} ) -> nil"
  end
end

class Node
  attr_accessor :value, :next_node

  def initialize(value=nil, next_node=nil)
    @value = value
    @next_node = next_node
  end
end