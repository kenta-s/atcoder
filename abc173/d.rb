n = gets.to_i
as = gets.split.map(&:to_i)

as.sort!.reverse!

max1 = as[0]
max2 = as[1]

ans = max1
(2..(n-1)).each do |i|
  ans += [max1, max2].min
  max1 = max2
  max2 = as[i]
end

puts ans
