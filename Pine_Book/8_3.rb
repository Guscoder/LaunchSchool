puts "Type in as many words as you want, one per line, until you press enter on an empty line"

wordsArray = []

while true
  word = gets.chomp
  if word == ""
    break
  end
wordsArray.push word

end


puts wordsArray.sort