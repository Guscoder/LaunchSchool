
(10..100).cover?(42)

famous_words = "seven years ago..."

famous_words.prepend("Four score and ")

puts famous_words


ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.key?("Spot")


munsters_description = "The Munsters are creepy in a good way."

munsters_description.downcase.capitalize

munsters_description = "The Munsters are creepy in a good way."

munsters_description.upcase.downcase(1, 5)


advice = "Few things in life are as important as house training your pet dinosaur."

advice.include?("Dino")


flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones += ["Dino", "Happy"]
puts flintstones


statement = "The Flintstones Rock!"
statement.count "t"