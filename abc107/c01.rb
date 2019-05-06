n,k = gets.split.map(&:to_i)
xs = gets.split.map(&:to_i)
ans = Float::INFINITY
n.times do |i|
  tmp = xs[i, k]
  break if tmp.size < k
  a = tmp[0]
  b = tmp[-1]
  base = (a - b).abs
  if a < 0 && b > 0
    extra = [a.abs, b.abs].min
  elsif a < 0 && b < 0
    extra = b.abs
  elsif a > 0
    extra = a.abs
  else
    extra = 0
  end
  ans = [ans, base + extra].min
end

puts ans
