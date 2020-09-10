n = gets.to_i
as = gets.split.map(&:to_i).sort.reverse

ans = 0
ans += as.shift

as = (as * 2).sort.reverse
(n-2).times do
  ans += as.shift
end

puts ans
