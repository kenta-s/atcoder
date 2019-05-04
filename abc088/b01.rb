n = gets.to_i
as = gets.split.map(&:to_i)
as.sort!

cnt = 0
al = 0
b = 0
while !as.empty?
  cnt += 1
  if cnt.odd?
    al += as.pop
  else
    b += as.pop
  end
end

puts (al - b)
