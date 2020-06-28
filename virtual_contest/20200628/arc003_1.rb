n = gets.to_i
rs = gets.chomp
a = rs.count('A')
b = rs.count('B')
c = rs.count('C')
d = rs.count('D')
f = rs.count('F')

total = a*4 + b*3 + c*2 + d*1
puts total.to_f / n
