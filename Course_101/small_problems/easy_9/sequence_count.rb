=begin

input - 2 integers

return val - array

Prog
  first arg - count
  sec arg - first num of sequence
  return same num of elements as count
  array contains multiples of starting num (1+1+1+1 etc..)

  
=end


def sequence(count, first_num)
  sum = 0
  final_array = []
  count.times do |i|
    sum += first_num
    final_array << sum
  end
  p final_array
end

sequence(5, 1) == [1, 2, 3, 4, 5]
sequence(4, -7) == [-7, -14, -21, -28]
sequence(3, 0) == [0, 0, 0]
sequence(0, 1000000) == []

=begin


def sequence(count, first)
  (1..count).map { |idx| idx * first }
end
=end