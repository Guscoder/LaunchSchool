=begin
Req
  write a method that takes one arg
  arg is an array containing integers
  returns average of all numbers in array
  array is never empty and numbers always positive

Algorithm
  pass in array
  add together all elements
  divide sum by # of elements to determine avg

=end

def average(arr)
  final_average = arr.inject(0.0) { |sum, el| sum + el } / arr.size
  final_average.to_i
end

puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40