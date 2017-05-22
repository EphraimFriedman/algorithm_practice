require_relative 'linked_list'

describe 'linked list' do
	let(:list) {Linked_List.new}
	let(:first_value) {20}
	let(:second_value) {21}
	let(:third_value) {22}
	context 'push method - adds item to end of list' do	
		it 'push one item' do
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
		it 'pop the last item' do 
			list.push(first_value)
			list.push(second_value)
			list.push(third_value)
			expect(list.pop()).to eq third_value
			expect(list.tail.value).to eq second_value
		end

		it 'returns nil if list is empty' do
			expect(list.pop()).to eq nil
		end
	end

	context 'unshift method - adds item to beginning of list' do
		it 'adds item to empty list' do
			list.unshift(first_value)
			expect(list.head.value).to eq first_value
		end

		it 'adds an item to the beginning of the list' do
			list.push(second_value)
			list.push(third_value)
			list.unshift(first_value)
			expect(list.head.value).to eq first_value
			expect(list.head.next.value).to eq second_value
		end
	end

	context 'shift method - removes first item of list' do
		
		it 'removes first item from list' do
			list.push(first_value)
			list.push(second_value)
			list.shift
			expect(list.head.value).to eq second_value
		end
	end

	context 'include? method - returns boolean if item is in list' do
		it 'returns true if found' do
			list.push(first_value)
			list.push(second_value)
			expect(list.include?(second_value)).to eq true
		end
		it 'returns false if not found' do
			list.push(first_value)
			list.push(second_value)
			expect(list.include?(third_value)).to eq false
		end
	end

	context 'find method - returns item if item is in list' do
		it 'returns node\'s value if found' do
			list.push(first_value)
			list.push(second_value)
			expect(list.find(second_value)).to eq second_value
		end
		
		it 'returns nil if not found' do 
			list.push(first_value)
			list.push(second_value)
			expect(list.find(third_value)).to eq nil
		end 
	end

	context 'size method - returns the size of list' do
		it 'returns the size of the list' do
			list.push(first_value)
			list.push(second_value)
			expect(list.size).to eq 2
		end
		it 'returns the size after a pop' do
			list.push(first_value)
			list.push(second_value)
			list.pop()
			expect(list.size).to eq 1
		end
	end

end
