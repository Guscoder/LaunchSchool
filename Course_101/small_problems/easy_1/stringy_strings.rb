=begin
Req
  write method with one arg
  arg is a positive integer
  returns string of 1s and 0s always starting with 1
  length of string matches arg

Algorithm
  create new string
  input integer
  add numbers until string size = arg
  create output of 1
  create output of 0
  make output length equal to arg size

=end

def stringy(int)
  numbers = [1]
  counter = 0

  loop do 
    if numbers.size.odd? 
      numbers << 0
    elsif numbers.size.even?
      numbers << 1
    end
    counter += 1
    break if numbers.size == int
  end
  numbers.join('')
end


puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'


def stringy(size, start=1)
  numbers = []

  size.times do |index|
    if start == 1
      number = index.even? ? 1 : 0
      numbers << number
    elsif start == 0
      number = index.odd? ? 1 : 0
      numbers << number
    end
  end

  numbers.join
end

puts stringy(6, 0)
