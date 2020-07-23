n,k,m,r = gets.split.map(&:to_i)

ss = []
(n-1).times do
  ss << gets.to_i
end

ss.sort!.reverse!
sum = ss.first(k-1).sum

x = (k*r) - sum

if x <= 0
  puts 0
elsif x > m
  puts -1
elsif 0 < x && x <= m
  puts x
else
  raise 'something wrong'
end
