=begin
Requirements
  method with one arg
  arg may be pos or neg
  check if number is odd
  if absolute value is odd return true
  assume only int are passed in   
  may NOT use .odd or .even

Algorithm
  divide arg by 2 if remainder is 0 it is even
  if odd then return true
=end



def is_odd?(int)
  int % 2 == 1 
end

puts is_odd?(4)


def is_odd?(int)
  int.remainder(2) == 1
end

puts is_odd?(5)