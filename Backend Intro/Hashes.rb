#Hashes

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

immediate_family = family.select do |k, v| k== :brothers || k== :sisters
end 

new_array = immediate_family.values.flatten 


#3


family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

family.each_key {|key| puts key}

family.values {|value| puts value}

#4
person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}
person[:name]

#5

has_key?

person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

if person.has_value?("Bob")
  puts "You found Bob!"
else
  puts "Bob is not here!"
end

#6

#1. iterate over the words array, and for each word:
#-arrange the letters in alphabetical order
#-if th ekey exists, append to the key's list
#  -also, create a new key, with this word in the list

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

result = {}

words.each do |word|
  key = word.split('').sort.join
  if result.has_key?(key)
    result[key].push(word)
  else
    result[key] = [word]
  end
end

result.each do |k, v|
  puts "------"
  p v
end