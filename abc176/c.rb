n = gets.to_i
as = gets.split.map(&:to_i)

ans = 0
max = 1
as.each do |a|
  max = [max, a].max
  ans += max - a
end

puts ans
