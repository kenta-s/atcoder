n,m = gets.split.map(&:to_i)
ans = 0

m -= 1 if m.odd?
usem = [n*2, m].min

m -= usem
ans += usem/2
ans += m/4

puts ans
