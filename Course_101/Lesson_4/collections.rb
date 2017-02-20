produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}



def select_fruit(hash_input)

  foods = hash_input.keys
  counter = 0
  selected_fruits = {}

loop do
  break if counter == hash_input.size
  current_key = foods[counter]
  current_value = hash_input[current_key]

  if current_value == 'Fruit'
    selected_fruits[current_key] = current_value
  end

  counter += 1
end 
  selected_fruits
end

select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}



def double_numbers!(numbers)
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    numbers[counter] = current_number * 2

    counter += 1
  end

  numbers   
end



# transform only if number is odd
def double_odd_numbers(numbers)
  doubled_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    current_number *= 2 if current_number.odd?
    doubled_numbers << current_number

    counter += 1
  end

  doubled_numbers
end


def multiply(numbers, multiplier)
  new_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    new_numbers << current_number * multiplier

    counter += 1
  end

  new_numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]
multiply(my_numbers, 3)


['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end












