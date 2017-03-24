def reverse!(list)
  counter = list.size
  num = 0 
  loop do 
    break if list.empty? || list.nil?
    item = list.pop
    list.insert(num, item)
    counter -=1
    num += 1
    break if counter == 0
  end  
  list
end


p list = [1,2,3,4]
p result = reverse!(list) # => [4,3,2,1]
p list == [4, 3, 2, 1]
p list.object_id == result.object_id

p list = %w(a b c d e)
p reverse!(list) # => ["e", "d", "c", "b", "a"]
p list == ["e", "d", "c", "b", "a"]

p list = ['abc']
p reverse!(list) # => ["abc"]
p list == ["abc"]

p list = []
p reverse!([]) # => []
p list == []

=begin
def reverse!(array)
  left_index = 0
  right_index = -1

  while left_index < array.size / 2
    array[left_index], array[right_index] = array[right_index], array[left_index]
    left_index += 1
    right_index -= 1
  end

  array
end

=end