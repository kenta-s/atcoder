n = gets.to_i
as = []
min = Float::INFINITY
n.times do
  a = gets.to_i
  if a % 10 != 0
    min = [min, a].min
  end
  as << a
end
sum = as.reduce(0){|a,e|a+=e}

if sum % 10 == 0 && min != Float::INFINITY
  puts sum - min
elsif sum % 10 == 0
  puts 0
else
  puts sum
end
