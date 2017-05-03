require_relative 'linked_list'

describe 'linked list' do
	

	context 'push method - adds item to end of list' do
		let(:list) {Linked_List.new}
		let(:first_value) {23}
		let(:second_value) {25}
		it 'push first item' do
			list.push(first_value)
			expect(list.head.value).to eq first_value
			expect(list.tail.value).to eq first_value
		end

		it 'push additional item' do
			list.push(first_value)
			list.push(second_value)
			expect(list.head.value).to eq first_value
			expect(list.head.next.value).to eq second_value
			expect(list.tail.value).to eq second_value
		end
	end
	

	context 'pop method - removes last item of list' do
		let(:list) {Linked_List.new}
		
		it 'pop the last item' do 
			list.push(20)
			list.push(21)
			list.push(22)
			expect(list.pop()).to eq 22
			expect(list.tail.value).to eq 21
		end
	end

	xit 'unshift method - adds item to beginning of list' do
	end

	xit 'shift method - removes first item of list' do
	end

	xit 'contains method - returns boolean if item is in list' do
	end

	xit 'find method - returns item if item is in list' do
	end

	xit 'size method - returns the size of list' do
	end

end
