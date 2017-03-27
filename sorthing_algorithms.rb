require 'pry'

def bubble_sort(nums)
	loop do
		swapped = false
		(nums.length - 1).times do |i|
			if nums[i] > nums[i + 1]
				nums[i], nums[i + 1] = nums[i + 1], nums[i]
				swapped = true 
			end 
		end 
		break if not swapped
	end	
	nums
end

def selection_sort(nums)
	(nums.length - 1).times do |i|
		min_index = find_min(nums, i, nums.length - 1)
		nums[i], nums[min_index] = nums[min_index], nums[i]
	end
	nums
end

def find_min(nums, start_index, end_index)
	min_index = start_index
	((start_index + 1)..end_index).each do |i|
		min_index = i if nums[i] < nums[min_index]
	end
	min_index
end

def insertion_sort(nums)
	(1..(nums.length - 1)).each do |i|
		(i).times do |j|
			if nums[i] < nums[j]
				nums.insert(j, nums.delete_at(i))
				break
			end
		end
	end
	nums
end

def merge_sort(nums)
	return nums if nums.length <= 1

	mid = nums.length / 2
	left_array = nums[0...mid]
	right_array = nums[mid..(nums.length - 1)]

	stitch(merge_sort(left_array), merge_sort(right_array))
end

def stitch(left_array, right_array)
	sorted_array = []

	while right_array.length > 0 && left_array.length > 0
			
			if left_array[0] < right_array[0]
				sorted_array << left_array.shift
			else
				sorted_array << right_array.shift
			end
	end

	sorted_array + left_array + right_array
end

def quick_sort(nums)

end

# array = [1,2,3,4,5,6,7,8,9,0,10,200]

# merge_sort(array)










