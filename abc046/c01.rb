n = gets.to_i
tas = []
n.times do
  tas << gets.split.map(&:to_i)
end

a, b = Rational(*tas[0]).to_s.split("/").map(&:to_i)

tas.each.with_index do |ta, ind|
  next if ind == 0
  flg = false
  i = 1

  while !flg && i <= 10000
    if a <= i * ta[0] && b <= i * ta[1]
      a = i * ta[0]
      b = i * ta[1]
      flg = true
    else
      i += 1
    end
  end
end

puts a + b
