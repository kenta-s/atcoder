n = gets.to_i
as = gets.split.map(&:to_i)

as.sort!.reverse!

sum = as.sum
a_x = as.shift
sum -= a_x

ans = 1

as.each do |a|
  if sum * 2 >= a_x
    ans += 1
  else
    break
  end

  a_x = a
  sum -= a_x
end

puts ans
