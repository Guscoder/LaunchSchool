

flintstones_hash = {}
flintstones.each_with_index do |name, index|
  flintstones_hash[name] = index
end



ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

total_ages = 0

ages.values.each do |age|
  total_ages += age
end
total_ages


total_ages = 0

ages.each {|_, age| total_ages += age}
total_ages


ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.select do |name, age|
  age < 100
end


ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

ages.values.min 


flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.index {|name| name[0, 2] == "Be"}



flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.map! do { |name| name[0,3] }


statement = "The Flintstones Rock"

result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a
letters.each do |letter|
  letter_frequency = statement.scan(letter).count
  result[letter] = letter_frequency if letter_frequency > 0
end
result


s = "I am a good boy"

def count_word_characters(s)
    h = Hash.new(0)
    s.each_char do |char| 
        next unless char =~/\w/
        h[char] += 1
    end
    h
end

count_word_characters(s)



words = "the flintstones rock"

def titleize(sentence)
  new_words = sentence.split.map(&:capitalize).join(" ")
  puts new_words
end

titleize(words)


munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.map do |name, details|
  case details["age"]
  when 0...18 
    details["age_group"] = "kid"
  when 18...65
    details["age_group"] = "adult"
  else  
    details["age_group"] = "senior"
  end
end
print munsters




























