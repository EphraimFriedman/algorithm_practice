require 'pry'

class Binary_Search_Tree
 attr_accessor :value, :left, :right
 def initialize(value)
 	@value = value
 	@left = nil
 	@right = nil
 end

 def push(val)
 	if val < value
 		if left.nil?
 			self.left = Binary_Search_Tree.new(val)
 		else
 			left.push(val)
 		end
 	else
 		if right.nil?
 			self.right = Binary_Search_Tree.new(val)
 		else
 			right.push(val)
 		end
 	end 
 	val
 end

 def include?(val) # look into why return nil on false if remove .nil?
 	return true if val == value
 	if val < value
 		!left.nil? && left.include?(val) 
 	else
 		!right.nil? && right.include?(val)
 	end
 end

 def size
 	@@counter = 0
	self.size_traversal
	@@counter
 end

 def increment_counter
 	@@counter += 1
 end

 def size_traversal # in order traversal
 	left.size_traversal if left
 	increment_counter
 	right.size_traversal if right
 end

 def count
 	@@counter = 0
	self.count_traversal
	@@counter
 end

 def count_traversal # pre order traversal
 	increment_counter
 	left.count_traversal if left
 	right.count_traversal if right
 end

 def length
 	@@counter = 0
	self.length_traversal
	@@counter
 end

 def length_traversal # post order traversal
 	left.length_traversal if left
 	right.length_traversal if right
 	increment_counter
 end

 def delete_min(parent = nil)
 	if left.nil? && right.nil?
 		if parent
 			parent.left = nil
		else
			self.value = nil
		end
	elsif left.nil? && right 
		if parent
			parent.left = right
		else
			self.value = right.value
			self.right = right.right
		end
 	end
 	left.delete_min(self) if left
 end

end










