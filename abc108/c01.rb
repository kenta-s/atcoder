n, k = gets.split.map(&:to_i)

if k.odd?
  puts (n / k) ** 3
else
  tmp1 = 0
  tmp2 = 0
  (1..n).each do |i|
    if i % k == 0
      tmp1 += 1
    elsif (2 * i) % k == 0
      tmp2 += 1
    end
  end
  puts (tmp1) ** 3 + ((tmp2) ** 3)
end
