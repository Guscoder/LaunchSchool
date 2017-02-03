#Backend_Final_Exercises

#1
numbers = [1,2,3,4,5,6,7,8,9,10]

numbers.each {|number| puts number}

#2
numbers = [1,2,3,4,5,6,7,8,9,10]

numbers.each {|number| puts number if number > 5}

numbers.each do |number|
  if number > 5
    puts number
  end
end

#3

numbers = [1,2,3,4,5,6,7,8,9,10]

numbers.select {|number| number.odd?}

odd_array = numbers.select {|number| number.odd? ? true : false}

p odd_array

#4

numbers = [1,2,3,4,5,6,7,8,9,10]

numbers.push(11)

numbers.unshift(0)

#5
numbers.pop

numbers << 3

#6
numbers = [1,2,3,4,5,6,7,8,9,10]

numbers.uniq

#7

#an array is an ordered list of elements whereas a hash is a data structure that stores items by associated keys or key-value pairs, not just a list

#8

person = {name: 'Ginny'}

person = {:name => "Ginny", hair => "brown"}


#9

h = {a:1, b:2, c:3, d:4}

h[:b]

h[:e] = 5

h.delete if do |k, v|
  v <3.5
end

h.delete_if { |k, v| v < 3.5}

#10

#hashes as arrays
hash = {names: ['bob', 'joe', 'sue',]}

#arrays of hashes
arr = [{name: 'Bob'}, {name: 'Joe'}, {name: 'Sue'}]

#12

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts['Joe Smith'][:email] = contact_data[0][0]
contacts['Joe Smith'][:address] = contact_data[0][1]
contacts['Joe Smith'][:phone] = contact_data[0][2]


contacts['Sally Johnson'][:email] = contact_data[1][0]
contacts['Sally Johnson'][:address] = contact_data[1][1]
contacts['Sally Johnson'][:phone] = contact_data[1][2]

puts contacts

#13

contacts['Joe Smith'][:email]

puts "joe's email is #{contacts["Joe Smith"][:email]}"

#14

contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
fields = [:email, :address, :phone]

contacts.each do |name, hash|
  fields.each do |field|
    hash[field] = contact_data.shift
  end
end

p contacts


#15
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if{|word| word.start_with?('s')}

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if{|word| word =~ /^s/}


#16

a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

a.map!{|word| word.split}.flatten!

p a


#17

hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!"
end

#they are the same

