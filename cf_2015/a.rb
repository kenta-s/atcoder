n,k,m,r = gets.split.map(&:to_i)

ss = []
(n-1).times do
  ss << gets.to_i
end

ss.sort!.reverse!
sum1 = ss.first(k).sum

if sum1 / k >= r
  puts 0
  exit
end

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
