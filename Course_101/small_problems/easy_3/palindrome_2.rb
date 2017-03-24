
=begin
prog
  input string
  remove non alphanumeric chars
  decapitalize letters
  reverse string
  compare the two strings
  output true or false


=end

def palindrome?(string)
  string.downcase == string.reverse.downcase
end

def palindrome(string)
  new_str = string.scan(/[a-z0-9]/).join
  palindrome?(new_str)
end

=begin
def real_palindrome?(string)
  string = string.downcase.delete('^a-z0-9')
  palindrome?(string)
end
=end

p palindrome?('madam')
p palindrome?('Madam') # (case matters)
p palindrome?("madam i'm adam") # (all characters matter)
p palindrome?('10 01')