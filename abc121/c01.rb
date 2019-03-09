N,M = gets.split.map(&:to_i)
ab_list = []
N.times do
  ab_list << gets.split.map(&:to_i)
end

ab_list.sort_by!{|ab| ab[0]}
remainder = M
ans = 0
ab_list.each do |ab|
  a, b = ab
  break if remainder == 0
  if b >= remainder
    ans += remainder * a
    remainder = 0
  else
    ans += b * a
    remainder -= b
  end
end

puts ans
