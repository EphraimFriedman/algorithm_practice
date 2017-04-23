require_relative 'sorthing_algorithms'

describe 'sorting algorithms' do
	let(:unsorted_nums) {[10,8,6,4,2,1,3,5,7,9]}
	let(:sorted_nums) {[1,2,3,4,5,6,7,8,9,10]}
	let(:unsorted_nums_with_negative) {[64,400,21,39,-34,101,-200,15,3,81]}
	let(:sorted_nums_with_negative) {[-200, -34, 3, 15, 21, 39, 64, 81, 101, 400]}
	
	it 'bubble sort with positive numbers' do
		expect(bubble_sort(unsorted_nums)).to eq sorted_nums
	end

	it 'bubble sort with negative numbers' do
		expect(bubble_sort(unsorted_nums_with_negative)).to eq sorted_nums_with_negative
	end

	it 'selection sort with positive numbers' do
		expect(selection_sort(unsorted_nums)).to eq sorted_nums
	end

	it 'selection sort with negative numbers' do
		expect(selection_sort(unsorted_nums_with_negative)).to eq sorted_nums_with_negative
	end

	it 'insertion sort with positive numbers' do
		expect(insertion_sort(unsorted_nums)).to eq sorted_nums
	end

	it 'insertion sort with negative numbers' do
		expect(insertion_sort(unsorted_nums_with_negative)).to eq sorted_nums_with_negative
	end

	it 'merge sort with positive numbers' do
		expect(merge_sort(unsorted_nums)).to eq sorted_nums
	end

	it 'merge sort with negative numbers' do
		expect(merge_sort(unsorted_nums_with_negative)).to eq sorted_nums_with_negative
	end

	it 'quick sort with positive numbers' do
		expect(quick_sort(unsorted_nums)).to eq sorted_nums
	end

	it 'quick sort with negative numbers' do
		expect(quick_sort(unsorted_nums_with_negative)).to eq sorted_nums_with_negative
	end

end
