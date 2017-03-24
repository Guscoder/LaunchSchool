def show_multiplicative_average (arr)
  result = (arr.reduce(:*).to_f / arr.length).to_f
  '%.3f' % result
end

p show_multiplicative_average([3, 5])

p show_multiplicative_average([2, 5, 7, 11, 13, 17])

