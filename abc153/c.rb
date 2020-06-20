n, k = gets.split.map(&:to_i)
hs = gets.split.map(&:to_i)

hs.sort!.reverse!
hs.shift(k)

ans = hs.reduce(0){|a,e| a+=e}
puts ans
