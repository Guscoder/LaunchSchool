=begin

Req
  write method with one arg, a string
  string contains one or more words
  all words with 5 or more letters will be reversed
  spaces only between words

Algorithm
  convert string to array
  identify string items with 5 or more words
  reverse each item
  convert array to string and output
=end

def reverse_words(str)
  new_str = []
  str.split.each do |word|
    if word.length >= 5
      new_str << word.reverse
    else
      new_str << word
    end
  end
  new_str.join(' ')
end

puts reverse_words('Professional')
puts reverse_words('Walk around the block')
puts reverse_words('Launch School')  