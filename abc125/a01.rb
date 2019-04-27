# n = gets.to_i
a,b,t = gets.split.map(&:to_i)

ans = 0

(t + 1).times.with_index do |_,i|
  ans += b if i != 0 && i % a == 0
end

puts ans
