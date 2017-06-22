require_relative 'binary_search_tree'

describe 'Binary Search Tree' do
	let(:tree) {Binary_Search_Tree.new(21)}
	let(:first_value) {20}
	let(:third_value) {22}
	let(:fourth_value) {23}
	context 'push method - adds item to correct position in tree' do	

		it 'adds item to right of tree' do
			tree.push(third_value)
			expect(tree.right.value).to eq third_value
		end

		it 'adds item to left of tree' do 
			tree.push(first_value)
			expect(tree.left.value).to eq first_value
		end

		it 'adds item two levels deep' do
			tree.push(third_value)
			tree.push(fourth_value)
			expect(tree.right.right.value).to eq fourth_value
		end
	end
	

	context 'delete method - removes given item from tree' do	

		it 'removes item without children' do
			tree.push(first_value)
			tree.push(third_value)
			tree.push(fourth_value)
			expect(tree.delete(fourth_value)).to eq fourth_value
			expect(tree.include?(fourth_value)).to eq false
		end

		it 'removes item with left child' do
			tree.push(first_value)
			tree.push(third_value)
			tree.push(fourth_value)
			tree.push(18)	
			tree.push(19)	
			tree.push(17)		
			expect(tree.delete(17)).to eq 17
			expect(tree.include?(17)).to eq false
		end

		it ' removes item with right child' do
			tree.push(first_value)
			tree.push(third_value)
			tree.push(fourth_value)	
			expect(tree.delete(third_value)).to eq third_value
			expect(tree.include?(third_value)).to eq false
		end

		it 'removes item with both children' do
			tree.push(first_value)
			tree.push(third_value)
			tree.push(fourth_value)
			tree.push(18)	
			tree.push(19)	
			tree.push(17)		
			expect(tree.delete(18)).to eq 18
			expect(tree.include?(18)).to eq false
		end	

		it 'removes root of tree' do
			tree.push(first_value)
			tree.push(third_value)
			tree.push(fourth_value)	
			expect(tree.delete(21)).to eq 21
			expect(tree.include?(21)).to eq false
		end
	end

	context 'include? method - returns boolean if item is in tree' do	
		it 'returns true if found' do 
			tree.push(third_value)
			tree.push(fourth_value)
			expect(tree.include?(fourth_value)).to eq true
		end

		it 'returns false if not found' do
			tree.push(third_value)
			tree.push(fourth_value)
			expect(tree.include?(first_value)).to eq false
		end
	end

	context 'full? method - returns boolean if tree is full' do

	end

	context 'balanced? method - returns boolean if tree is balanced' do

	end

	context 'valid? method - returns boolean if tree is valid' do

	end

	context 'size method - traverses the tree in order' do
		it 'returns the amount of nodes on the tree' do
			tree.push(first_value)
			tree.push(third_value)
			tree.push(fourth_value)
			expect(tree.size).to eq 4
		end
	end

	context 'count method - traverses the tree pre order' do
		it 'returns the amount of nodes on the tree' do
			tree.push(first_value)
			tree.push(third_value)
			tree.push(fourth_value)
			expect(tree.count).to eq 4
		end
	end

	context 'length method - traverses the tree post order' do
		it 'returns the amount of nodes on the tree' do
			tree.push(first_value)
			tree.push(third_value)
			tree.push(fourth_value)
			expect(tree.length).to eq 4
		end
	end

	context '#delete_min' do
		it 'deletes the smallest node' do
			tree.push(first_value)
			tree.push(third_value)
			tree.push(fourth_value)
			tree.delete_min
			expect(tree.include?(first_value)).to eq false
		end
		it 'deletes the parent if it is the min node' do
			tree.push(third_value)
			tree.push(fourth_value)
			tree.delete_min
			expect(tree.include?(21)).to eq false
		end
	end

	# context 'each method - traverses the tree in pre order' do
	# 	it 'takes a block of code and apply\'s it to each node' do
	# 		tree.push(first_value)
	# 		tree.push(third_value)
	# 		tree.push(fourth_value)
	# 		block =  {p node.value}.a_proc
	# 		expect { |b| tree.each(block) }.to yield_control.exactly(4).times 

	# 		# expect(tree.each {|node| p node.value}).to yield_control.exactly(4).times
	# 	end
	# end

	context 'map method - traverses the tree in post order' do

	end

end
