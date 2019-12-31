n = gets.to_i
ss = []
n.times do
  s = gets.chomp.chars.sort.join
  ss << s
end

ss.sort!

ans = 0
h = Hash.new(0)
ss.size.times do |i|
  h[ss[i]] += 1
end

h.each do |k,v|
  if v > 0
    ans += (1..v).to_a.combination(2).size
  else
    ans += v
  end
end

# puts ss.size - ss.uniq.size
puts ans
