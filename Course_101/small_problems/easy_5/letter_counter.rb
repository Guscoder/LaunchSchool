
=begin
Prog
  take a string w space separated words
  return a hash showing # of words of diff sizes

  count size of each word
  create hash with keys repr size of words
  count # of word with each size
  save in the hash
=end

def word_sizes(string)
  word_count = Hash.new(0) # need default val of 0 or it will bring an exception for nil
  string.split.each do |word|
    word_count[word.size] += 1 # adds val of 1 each time it finds a word of each size
  end
  word_count
end


p word_sizes('Four score and seven.')
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}