=begin

Prog
  get integer
  create aray of integers between 1 and argument
    iterate through range of 1-arg
    put each into new array
    return new array
=end

def sequence(int)
  range_array = []
  (1..int).each do |n|
    range_array << n
  end
  p range_array
end

sequence(5) == [1, 2, 3, 4, 5]
sequence(3) == [1, 2, 3]
sequence(1) == [1]

=begin

def sequence(number)
  (1..number).to_a
end

=end