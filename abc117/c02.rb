n, m = gets.split.map(&:to_i)
xs = gets.split.map(&:to_i)
xs.sort!
a = []
m.times do |i|
  break if xs[i+1].nil?
  a << (xs[i] - xs[i+1]).abs
end

a.sort!.reverse!
(n-1).times do
  a.shift
end

ans = a.reduce(0){|a,e|a += e}
puts ans
