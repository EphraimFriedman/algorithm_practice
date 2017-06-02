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

 def include?(val)
 	return true if val == value
 	if val < value
 		!left.nil? && left.include?(val)
 	else
 		!right.nil? && right.include?(val)
 	end
 end
end