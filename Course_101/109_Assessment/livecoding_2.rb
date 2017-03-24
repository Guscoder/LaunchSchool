
PRODUCTS = [
  {name: "Thinkpad x210", price: 220},
  {name: "Thinkpad x220", price: 250},
  {name: "Thinkpad x250", price: 979},
  {name: "Thinkpad x230", price: 300},
  {name: "Thinkpad x230", price: 330},
  {name: "Thinkpad x230", price: 350},
  {name: "Thinkpad x240", price: 700},
  {name: "Dell Latitude", price: 200},
  {name: "Dell Latitude", price: 650},
  {name: "Dell Inspiron", price: 300},
  {name: "Dell Inspiron", price: 450}
]

query = {
  price_min: 240,
  price_max: 280,
  q: "thinkpad"
}

query2 = {
  price_min: 300,
  price_max: 450,
  q: 'dell'
}

=begin

Program
  input query
  search array for match
  output match

Alg
  iterate through products array
  use select to match name with product in query
  name should include query value of name
  use select to match price in query
  price should be between or equal to min/max values
  output procut hash if match found

=end


def search(query)
  PRODUCTS.select do |n|
    n[:name].downcase.include?(query[:q]) &&
    n[:price].between?(query[:price_min], query[:price_max])
  end
end


puts search(query2)
puts search(query)
