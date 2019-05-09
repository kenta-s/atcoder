n,m = gets.split.map(&:to_i)

abs = []
n.times do
  abs << gets.split.map(&:to_i)
end

abs.sort!{|a,b| a[0] <=> b[0]}

ans = 0
rem = m
abs.each do |ab|
  if rem == 0
    break
  end
  if rem <= ab[1]
    ans += rem * ab[0]
    rem = 0
  elsif rem > ab[1]
    rem -= ab[1]
    ans += ab[1] * ab[0]
  end
end

puts ans
