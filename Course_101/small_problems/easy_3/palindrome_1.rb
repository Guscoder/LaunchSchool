

def palindrome?(string)
  new_string = string.chars - [" "]
  new_string = new_string.join
  new_string.reverse == new_string
end

=begin
def palindrome?(string)
  arr = string.chars
  arr.delete(" ")
  arr == arr.reverse ? true : false
end
=end

p palindrome?('madam')
p palindrome?('Madam') # (case matters)
p palindrome?("madam i'm adam") # (all characters matter)
p palindrome?('10 01')
