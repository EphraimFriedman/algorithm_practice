require_relative 'linked_list'

describe 'linked list' do
	let(:list) {Linked_List.new}
	
	context 'push method - adds item to end of list' do
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
		it 'pop the last item' do 
			list.push(20)
			list.push(21)
			list.push(22)
			expect(list.pop()).to eq 22
			expect(list.tail.value).to eq 21
		end
	end

	context 'unshift method - adds item to beginning of list' do
		it 'adds item to empty list' do
			list.unshift(20)
			expect(list.head.value).to eq 20
		end

		it 'adds an item to the beginning of the list' do
			list.push(20)
			list.push(21)
			list.unshift(19)
			expect(list.head.value).to eq 19
			expect(list.head.next.value).to eq 20
		end
	end

	context 'shift method - removes first item of list' do
		
		it 'removes first item from list' do
			list.push(20)
			list.push(21)
			list.shift
			expect(list.head.value).to eq 21
		end
	end

	context 'include? method - returns boolean if item is in list' do
		it 'returns true if found' do
			list.push(20)
			list.push(21)
			expect(list.include?(21)).to eq true
		end
		it 'returns false if not found' do
			list.push(20)
			list.push(21)
			expect(list.include?(25)).to eq false
		end
	end

	context 'find method - returns item if item is in list' do
		it 'returns node\'s value if found' do
			list.push(20)
			list.push(21)
			expect(list.find(21)).to eq 21
		end
		
		it 'returns nil if not found' do 
			list.push(20)
			list.push(21)
			expect(list.find(25)).to eq nil
		end 
	end

	context 'size method - returns the size of list' do
		it 'returns the size of the list' do
			list.push(20)
			list.push(21)
			expect(list.size).to eq 2
		end
		it 'returns the size after a pop' do
			list.push(20)
			list.push(21)
			list.pop()
			expect(list.size).to eq 1
		end
	end

end
