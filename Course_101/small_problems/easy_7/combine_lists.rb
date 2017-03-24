def interleave(arr_1, arr_2)
  new_arr = []
  arr_1.each do |n|
    new_arr << n
  end
  counter = 1
  arr_2.each do |n|
    new_arr.insert(counter, n)
    counter += 2
  end
  new_arr
end


interleave([1, 2, 3], ['a', 'b', 'c'])

def interleave(arr_1, arr_2)
  arr_1.zip(arr_2).flatten
end




=begin

def interleave(array1, array2)
  result = []
  array1.each_with_index do |element, index|
    result << element << array2[index]
  end
  result
end

=end
