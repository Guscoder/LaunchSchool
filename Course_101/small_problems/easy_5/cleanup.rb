def cleanup(text)
  text.gsub(/[^a-z]/i, ' ').squeeze(' ')
end


p cleanup("---what's my +*& line?") == ' what s my line '

=begin

ALPHABET = ('A'..'Z').to_a + ('a'..'z').to_a

def cleanup(string)
  result = string.chars.map { |char| ALPHABET.include?(char) ? char : ' ' }
  result.join.squeeze(' ')
end


def cleanup(string)
  char_allowed = ('a'..'z').to_a + ('A'..'Z').to_a
  space = true
  result = string.chars.map do |char| 
    if !char_allowed.include?(char) && space == true
      space = false
      char = ' '
    elsif !char_allowed.include?(char) && space == false
      char = ''
    else
      space = true
      char
    end
  end
  result.join
enda
=end