
=begin

Prog
  access each item in array
  access 

=end


def buy_fruit(arr)
  final_list = []
  arr.each do |item|
    count = item[1]
    count.times do |i|
      final_list << item[0]
    end
  end
  p final_list
end

buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]])

=begin

def buy_fruit(list)
  list.map { |fruit, quantity| [fruit] * quantity }.flatten
end

=end