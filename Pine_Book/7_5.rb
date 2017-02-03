beer = 99
beer_wall = " bottles of beer on the wall"
bottles = " bottles of beer,"
takeOne = " Take one down, pass it around, "

while beer > 0 
  puts beer.to_s + beer_wall + "," + beer.to_s + bottles + takeOne
    beer -= 1
    puts beer.to_s + beer_wall + "." 
end

