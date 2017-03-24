
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

def substrings(string)
    results = []
  (0...string.size).each do |start_index|
    this_substring = string[start_index..-1]
    results.concat(substrings_at_start(this_substring))
  end
  results
end
