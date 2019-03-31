n = gets.to_i
as = gets.split.map(&:to_i)

ans = Float::INFINITY
(-100..100).each do |i|
  tmp = as.reduce(0) do |a, e|
    a += (e - i) ** 2
  end
  ans = [ans, tmp].min
end

puts ans
