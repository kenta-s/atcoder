n = gets.to_i
ps = gets.split.map(&:to_i)

ans = 1
min = ps.shift
ps.each do |p|
  if min >= p
    ans += 1
    min = p
  end
end

puts ans
