def multiply_all_pairs(arr_1, arr_2)
  result = []
  arr_1.each do |n|
    arr_2.each do |i|
      result << n * i
    end
  end
  result.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2])

=begin

def multiply_all_pairs(array_1, array_2)
  array_1.product(array_2).map { |num1, num2| num1 * num2 }.sort
end

=end