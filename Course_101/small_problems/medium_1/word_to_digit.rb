=begin
input - sentence string

return - new string

Prog
  change string to array of words
  iterate over each word to see if it matches a number
  if a match, change the word to a number
  rejoin array into new string
  return value of teh new string


gsub is the way to go, and it's very flexible. Knowing some basic regex also really helped me here.

If you read gsub documentation, you can simply use a hash as the second argument, and if the match data from gsub is included as a key from that hash, it uses the value as the substitution.
=end

NUMS = {"zero" => "0", "one" => "1", "two" => "2", "three" => "3", "four" => "4",
        "five" => "5", "six" => "6", "seven" => "7", "eight" => "8", "nine" => "9"
        }.freeze

def word_to_digit(string)
  string.gsub(/#{NUMS.keys.join("|")}/, NUMS)
end

word_to_digit('Please call me at five five five one two three four. Thanks.')

=begin

DIGIT_HASH = {
  'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4',
  'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9'
}.freeze

def word_to_digit(words)
  DIGIT_HASH.keys.each do |word|
    words.gsub!(/\b#{word}\b/, DIGIT_HASH[word])
  end
  words
end

=end