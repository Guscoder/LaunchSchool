=begin
input-string
output-middle char of string

Prog
  conv string to array
  count num of chars in string
  div num by 2 to get half
  if odd then half + 1 is middle char
  if even then take char at num half and half +1
  output middle chars  



=end

def center_of(str)
  str_arr = str.chars
  char_counter = str_arr.count
  middle_chars = []
  if char_counter.odd?
    middle_chars << str_arr[(char_counter.to_f / 2).floor]
  elsif char_counter.even?
    middle_chars << str_arr[(char_counter / 2)- 1] << str_arr[(char_counter / 2)]
  end
  p middle_chars.join 
end

center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'

=begin

def center_of(string)
  center_index = string.size / 2
  if string.size.odd?
    string[center_index]
  else
    string[center_index - 1, 2]
  end
end

=end