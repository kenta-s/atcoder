n = gets.to_i
as = gets.split.map(&:to_i)
ans = 0
as.each do |a|
  ans += a-1
end

puts ans
