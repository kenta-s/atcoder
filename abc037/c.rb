n, k = gets.split.map(&:to_i)
as = gets.split.map(&:to_i)

sum = as[0, k].sum
ans = sum

(k..n-1).each do |i|
  sum = sum - as[i-k] + as[i]
  ans += sum
end

puts ans
