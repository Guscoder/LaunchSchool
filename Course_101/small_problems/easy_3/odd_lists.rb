
def odd_list(arr)
  counter = 0
  new_arr = []
  arr.select do |n|
    new_arr << arr[counter]
    counter += 2
    break if counter > arr.size
  end
  new_arr
end

p odd_list([1,2,3,4,5])

p odd_list(['abc', 'def'])

odd_list([123])

odd_list([])


=begin
def oddities(arr)
  odds = arr.select.with_index { |value, index| index.even? }
end

def evenities(arr)
  odds = arr.select.with_index { |value, index| index.odd? }
end


def oddities(arr)
  new_arr = []
  arr.each_with_index {|val, index| new_arr << val if index.even?}
  new_arr
end

=end