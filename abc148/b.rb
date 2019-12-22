n = gets.to_i
s,t = gets.split
s = s.chomp.chars
t = t.chomp.chars

x = []
n.times do |i|
  x << s[i]
  x << t[i]
end

puts x.join
