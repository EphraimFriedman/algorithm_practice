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
  
  def include?(v)
    raise 'list is empty' if @head.nil?

    found = false
    current_node = @head

    while current_node != nil
      if current_node.value == v
        found = true
        break;
      end
      current_node = current_node.next
    end

    found
  end

  def find(v)
    raise 'list is empty' if @head.nil?
    current_node = @head
    while current_node != nil
      return current_node.value if current_node.value == v
      current_node = current_node.next
    end
  end

  def unshift(v)
    if @head.nil?
      @head = Node.new(v)
    end

    node = Node.new(v)
    node.next = @head
    @head = node
    @size += 1
  end

  def shift
    return 'list is empty' if @head.nil?
    @head = @head.next
    @size -= 1
  end
end



class Node
  attr_accessor :value, :next
  
  def initialize(value)
    @value = value
    @next = nil
  end
  
end
