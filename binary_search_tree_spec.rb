require_relative 'binary_search_tree'

describe 'Binary Search Tree' do
	let(:tree) {Binary_Search_Tree.new(21)}
	let(:first_value) {20}
	let(:second_value) {21}
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

	end

	context 'include? method - returns boolean if item is in tree' do

	end

	context 'full? method - returns boolean if tree is full' do

	end

	context 'balanced? method - returns boolean if tree is balanced' do

	end

	context 'valid? method - returns boolean if tree is valid' do

	end

	context 'traverse_depth_first_in_order method -' do

	end

	context 'traverse_depth_first_pre_order method -' do

	end

	context 'traverse_depth_first_post_order method -' do

	end

end
