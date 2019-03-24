n, x = gets.split.map(&:to_i)
as = gets.split.map(&:to_i)

ans = 0
n.times.with_index(1) do |_, i|
  break if as[i].nil?
  next if as[i-1] + as[i] <= x
  a = as[i-1]
  b = as[i]
  tmp = [a-x, 0].max
  ans += tmp
  c = a - tmp
  d = x - c
  ans += [b-d, 0].max
  as[i-1] = c
  as[i] = d
end

puts ans
