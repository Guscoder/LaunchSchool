=begin

Req
  write method with one arg
  arg is a positive integer
  returns sum of all digits in integer

Alg
  separate digits
  add digits together
  output sum of digits 
=end

def sum(int)
  int.to_s.chars.map(&:to_i).inject(:+)
end

puts sum(23) 

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45