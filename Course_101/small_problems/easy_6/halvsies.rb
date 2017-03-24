
=begin
Algorithm
  determine size of array
  divide size by 2, round up
  puts first half of items into array 1
  put second half of items into array 2

=end


def halvsies(arr)
  first_half = arr.slice(0, (arr.size / 2.0).ceil)
  second_half = arr.slice(first_half.size, arr.size - first_half.size)
  [first_half, second_half]
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]