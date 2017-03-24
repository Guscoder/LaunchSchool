
def short_long_short(str_1, str_2)
  if str_1.size > str_2.size
    str_2 + str_1 + str_2
  else
    str_1 + str_2 + str_1
  end
end


p short_long_short('abc', 'defgh') 
p short_long_short('abcde', 'fgh') 
p short_long_short('', 'xyz')