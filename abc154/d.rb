n, k = gets.split.map(&:to_i)
ps = gets.split.map(&:to_i)

cands = ps.map do |p|
  ((p*(p+1.0))/2)/p
end

# p cands

tmp = 0
(0..k-1).each do |i|
  tmp += cands[i]
end

ans = tmp

(0..n-1).each do |i|
  break if cands[i+k].nil?
  tmp = tmp - cands[i] + cands[i+k]

  ans = [ans, tmp].max
end

puts ans
