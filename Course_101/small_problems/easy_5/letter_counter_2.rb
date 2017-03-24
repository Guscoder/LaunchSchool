def word_sizes(string)
  word_count = Hash.new(0) # need default val of 0 or it will bring an exception for nil
  string.split.each do |word|
    clean_word = word.delete('^A-Za-z')# '^A-Za-z' means all except the items in these ranges
    word_count[clean_word.size] += 1 # adds val of 1 each time it finds a word of each size
  end
  word_count
end


p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}