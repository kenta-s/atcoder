n = gets.to_i
as = []
5.times do
  as << gets.to_i
end

min = as.min
index = as.index(min)
ans = index
ans += (n / min.to_f).ceil
ans += (5 - index - 1)
puts ans
