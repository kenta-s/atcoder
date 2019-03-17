n,k = gets.split.map(&:to_i)
sushis = []
n.times do
  sushis << gets.split.map(&:to_i)
end

sushis.sort!{|a,b| a[1] <=> b[1]}.reverse!

used = Hash.new(false)
fixed = []
sw = []
sushis[0...k].each do |sushi|
  if used[sushi[0]]
    sw << sushi
  else
    fixed << sushi
    used[sushi[0]] = true
  end
end

sw.sort_by!{|s| s[1]}

cands = []
sushis[k..-1].each do |sushi|
  break if cands.size == sw.size
  if !used[sushi[0]]
    cands << sushi
    used[sushi[0]] = true
  end
end
cands.sort_by!{|s| s[1]}.reverse!

fixed_size = fixed.size
fixed_point = fixed.reduce(0){|a,e|a+=e[1]}
sw_point = sw.reduce(0){|a,e| a+=e[1]}
cands_point = 0
ans = fixed_point + fixed_size**2 + sw_point

cands.size.times do |i|
  cands_point += cands[i][1]
  sw_point -= sw[i][1]
  tmp = fixed_point + cands_point + sw_point
  tmp += (fixed_size + i+1)**2
  ans = [ans, tmp].max
end

puts ans
