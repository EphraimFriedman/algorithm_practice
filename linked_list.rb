require 'pry'

class Linked_List
  attr_accessor :head, :tail, :size 


  def initialize
    @head
    @tail
    @size = 0
  end
  
  def push(v)
    node = Node.new(v)
    if head.nil?
     @head = node
    end

    if tail
      tail.next = node
    end
    @size += 1

    @tail = node
  end
  
  def pop

    return false if head.nil?

    previous = @head

    while previous.next != @tail
      previous = previous.next
    end 

    deleted_value = @tail.value
    @tail = previous
    @tail.next = nil
    @size -= 1

    deleted_value
  end
  
  def contains?(v)
  
  end
end

class Node
  attr_accessor :value, :next
  
  def initialize(value)
    @value = value
    @next = nil
  end
  
end
