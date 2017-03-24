
def crunch(str)
  new_str_arr = []
  str.split.each do |word|
    new_str_arr << word.squeeze
  end
  p new_str_arr.join(' ')
end

crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''
