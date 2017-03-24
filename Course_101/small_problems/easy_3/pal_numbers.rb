def palindrome?(string)
  string == string.reverse
end

def palindromin_num?(number)
  palindrome?(number.to_s)  
end

p palindromin_num?(4567)
p palindromin_num?(123321)
