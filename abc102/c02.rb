n = gets.to_i
as = gets.split.map(&:to_i)

ans = 0
tmp = []
as.each.with_index(1) do |a,i|
  tmp << a-i
  # ans += (a - (x + i)).abs
end
tmp.sort!
x = tmp[tmp.size / 2]
as.each.with_index(1) do |a,i|
  ans += (a - (x + i)).abs
end

puts ans
