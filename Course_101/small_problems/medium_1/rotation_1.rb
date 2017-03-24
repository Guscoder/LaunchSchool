
def rotate_array(arr)
  new_array = arr.clone
  first_item = new_array.shift
  new_array.push(first_item)
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true


=begin

def rotate_array(array)
  array[1..-1] + [array[0]]
end


=end