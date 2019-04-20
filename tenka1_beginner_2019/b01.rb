n = gets.to_i
s = gets.chomp
k = gets.to_i

char = s[k-1]
ss = s.gsub(char, "A").chars

tmp = ""
n.times do |i|
  if ss[i] == "A"
    tmp << s[i]
  else
    tmp << "*"
  end
end

puts tmp
