CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)

def double_consonants(str)
  doubled_str = str.chars.map do |char|
    if CONSONANTS.include?(char.downcase)
      char * 2
    else
      char
    end
  end
  p doubled_str.join('')
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""

=begin

VOWELS = %w(a e i o u)

def double_consonants(string)
  doubled_consonants = ''
  string.each_char do |char|
    if VOWELS.include?(char) || char =~ /[^A-Za-z]/
      doubled_consonants << char
    else
      doubled_consonants << char << char
    end
  end
  doubled_consonants
end

=end