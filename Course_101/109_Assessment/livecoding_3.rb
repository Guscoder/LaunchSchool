
=begin
  removing vowels from words

Program
  input array of words
  modify each word by removing vowels
  output new array with changed words

=end

word_array = ['john', 'steve', 'anna', 'catherine']

def extract(words)
  vowels = ['a', 'e', 'i', 'o', 'u']
  words.map do |word|
    chars = word.split('')
    vowels.each do |v|
      chars.delete(v)
    end
    chars.join('')
  end

=begin
  vowels.split.each do |v|
    words.map do |word|
      word.delete(v.to_s)
      puts word
    end
  end

=end
end

p extract(word_array)








