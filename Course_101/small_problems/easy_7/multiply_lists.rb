def multiply_list(arr_1, arr_2)
  counter = 0 
  result = []
  loop do 
    result << (arr_1[counter] * arr_2[counter])
    counter += 1
    break if counter == arr_1.length
  end
  result
end

p multiply_list([3, 5, 7], [9, 10, 11])

=begin

def multiply_list(list_1, list_2)
  products = []
  list_1.each_with_index do |item, index|
    products << item * list_2[index]
  end
  products
end

=end