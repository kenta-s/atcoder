a,b,n = gets.split.map(&:to_i)
x = [n, b-1].min

ans = ((a*x)/b.to_f).floor - a*(x/b.to_f).floor
puts ans
