n = gets.to_i
as = gets.split.map(&:to_i)
as.sort!.reverse!

gcd = as.reduce(:gcd)
