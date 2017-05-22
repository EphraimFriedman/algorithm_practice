require 'pry'

class Node
  attr_reader :value
  attr_accessor :next
  
  def initialize(value)
    @value = value
    @next = nil
  end
  
end

class Linked_List
  attr_accessor :head, :tail, :size 

  def initialize
    @head
    @tail
    @size = 0
  end
  
  def push(v)
    node = Node.new(v)
 
    self.head = node if head.nil?
    self.tail.next = node if tail
    self.size += 1
    self.tail = node
  end
  
  def pop
    return nil if head.nil?

    current = head

    while current.next != tail
      current = current.next
    end 

    deleted_value = tail.value
    self.tail = current
    tail.next = nil
    self.size -= 1

    deleted_value
  end
  
  def include?(v)
    return false if head.nil?

    current_node = head

    while current_node != nil
      return true if current_node.value == v
      current_node = current_node.next
    end

    false
  end

  def find(v)
    return nil if head.nil?
    current_node = head
    while current_node != nil
      return current_node.value if current_node.value == v
      current_node = current_node.next
    end
  end

  def unshift(v)
    node = Node.new(v)
    return self.head = node if head.nil?

    node.next = head
    self.head = node
    self.size += 1
  end

  def shift
    return nil if @head.nil?
    self.head = head.next
    self.size -= 1
  end
end




