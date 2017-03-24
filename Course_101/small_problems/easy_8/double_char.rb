=begin

input-string
output--new string in which each char is doubled

Prog
  eval each char in the string
  add another of the same char next to each one
  output the new string

=end


def repeater(str)
  doubled_str = str.chars.map do |char|
    char * 2
  end
  p doubled_str.join('')
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''

=begin

def repeater(string)
  result = ''
  string.each_char do |char|
    result << char << char
  end
  result
end

=end