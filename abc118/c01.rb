n = gets.to_i
as = gets.split.map(&:to_i)
ans = as.reduce(&:gcd)
puts ans
