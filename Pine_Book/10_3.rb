def shuffle arr
  shuffledArray = []

while arr.length > 0

  #pick one random element of the array
  randomIndex = rand(arr.length) #chooses random index number between 0 and length of array number

  #go through each item in array put into new array except for the randomly chose one which goes into suffled
  currIndex = 0
  newArray = []

  arr.each do |item| 
    if currIndex == randomIndex
    shuffledArray.push item
    else
      newArray.push item
    end
    currIndex = currIndex + 1
  end
#replace original array with the new smaller array
arr = newArray
end

shuffledArray
end

puts(shuffle([1,2,3,4,5,6,7,8,9]))
