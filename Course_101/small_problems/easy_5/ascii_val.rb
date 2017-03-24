
=begin
Prog
  get string
  separate string into chars into array
  determine ascii val of each char
  add chars together--sum
  return sum
=end

def ascii_value(string)
  sum = 0
  string.chars.each do |char|
    sum += char.ord
  end
  sum
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0
