n = gets.to_i
cs = gets.chomp.chars
cs2 = cs.dup.sort

a = 0
b = 0
n.times do |i|
  next if cs[i] == cs2[i]

  if cs[i] == 'W'
    a += 1
  elsif cs[i] == 'R'
    b += 1
  end
end

puts [a, b].max
