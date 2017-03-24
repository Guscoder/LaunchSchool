=begin
def substrings_at_start(str)
  result = []
  0.upto(string.size - 1) do |index|
    result << string[0..index]
  end
  result  
end
=end

def substrings_at_start(string)
  substrings = []
  count = 1
  loop do
    substrings << string.slice(0, count)
    break if count == string.size
    count += 1
  end
  substrings
end