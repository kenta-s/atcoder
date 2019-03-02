n, t = gets.split.map(&:to_i)
ts = gets.split.map(&:to_i)

ans = t
n.times do |i|
  break if ts[i+1].nil?
  ans += [t, ts[i+1] - ts[i]].min
end

puts ans
