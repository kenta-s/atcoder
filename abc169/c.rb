require 'bigdecimal'

a, b = gets.split
a = a.to_i
b = BigDecimal(b, 2)

puts (a*b).floor
