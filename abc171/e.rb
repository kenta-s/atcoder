n = gets.to_i
as = gets.split.map(&:to_i)

s = as[0]
n.times do |i|
  next if i == 0
  s = s^as[i]
end

ans = as.map do |a|
  s^a
end.to_a.join(' ')

puts ans
