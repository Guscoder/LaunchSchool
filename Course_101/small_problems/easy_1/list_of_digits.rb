
=begin

Req
  method with 1 arg
  arg is positive integer
  outputs list of the digits in the arg number

Algorithim
  input number
  split number into array with each digit separate

=end

def digit_list(int)
  int.to_s.chars.map { |char| char.to_i } # or also .map(&:to_i)
end

puts digit_list(2458)
