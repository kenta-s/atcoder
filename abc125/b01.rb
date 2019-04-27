n = gets.to_i
vs = gets.split.map(&:to_i)
cs = gets.split.map(&:to_i)

pairs = []
n.times do |i|
  pairs << [vs[i], cs[i]]
end

pairs.sort!{|b,a| (a[0] - a[1]) <=> (b[0] - b[1])}

ans = 0
pairs.each do |p|
  break if p[0] - p[1] < 0
  ans += (p[0] - p[1])
end

puts ans
