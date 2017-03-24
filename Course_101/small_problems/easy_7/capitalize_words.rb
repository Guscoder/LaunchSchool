
def word_cap(str)
  new_array = str.split.map do |word|
    word.capitalize
  end
  p new_array.join(' ')
end


word_cap('four score and seven') == 'Four Score And Seven'
word_cap('the javaScript language') == 'The Javascript Language'
word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'


def word_cap(words)
  words.split.map(&:capitalize).join(' ')
end