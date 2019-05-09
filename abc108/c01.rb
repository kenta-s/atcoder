n, k = gets.split.map(&:to_i)

tmp = 0
(1..n).each do |i|
  if (i * 2) % k == 0
    tmp += 1
  end
end

ans = tmp ** 3
puts ans
