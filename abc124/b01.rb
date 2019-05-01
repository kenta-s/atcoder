n = gets.to_i
as = gets.split.map(&:to_i)

ans = 1
tmp = as[0]
as.each.with_index do |a,i|
  if i == 0
    next
  end

  if a >= tmp
    ans += 1
    tmp = a
  end
end

puts ans
