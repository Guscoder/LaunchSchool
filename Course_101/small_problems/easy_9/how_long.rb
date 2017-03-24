=begin

input - string arg
output - array

Prog
  change string to array
  determine size of each item in array
  insert size of item after each item with space in between
  output new array
=end


def word_lengths(str)
  final_array = []
  str.split.each do |item|
    final_array << "#{item} #{item.size}"
  end
  p final_array
end


p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

word_lengths("") == []