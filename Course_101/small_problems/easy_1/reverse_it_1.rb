
=begin

Req
  write method with one arg a string
  return same string with words in reverse order

Algorithim
  input string
  split string into array
  reverse order of array
  change array to string

=end

def reverse_sentence(str)
  str.split(" ").reverse.join(" ")
end


  puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'