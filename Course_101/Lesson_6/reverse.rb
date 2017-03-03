def reverse(string)
  myarray = []
  counter = string.size
  loop do 
    myarray << string[counter]
    counter -= 1
    break if counter < 0
  end
  return myarray.join
end

reverse("bowler")


