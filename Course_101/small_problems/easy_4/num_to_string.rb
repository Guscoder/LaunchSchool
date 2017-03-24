DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
  result = ''
  loop do
    number, remainder = number.divmod(10)
    result.prepend(DIGITS[remainder])
    break if number == 0
  end
  result
end

=begin
def integer_to_string(num)
  return [num].join if num == 0
  arr = []
  while num > 0
    arr.unshift(num % 10)
    num /= 10
  end
  arr.join
end
=end
