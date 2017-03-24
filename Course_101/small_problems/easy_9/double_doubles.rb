=begin
  input--number
  output--number

Prog
  input number
  determine if number is double or not:
    split # in half
    compare halves to see if they are the same
  if double, do nothing return same number
  if not double, multiply by 2 and return product

=end

def twice(number)
  number_string = number.to_s
  center = number_string.size / 2
  left_side = number_string[0..(center - 1)]
  right_side = number_string[center..-1]

  return number * 2 if number_string.size == 1
  return number if left_side == right_side
  return number * 2
end


p twice(37)
p twice(44)
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10
