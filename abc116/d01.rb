n,k = gets.split.map(&:to_i)
sushis = []
n.times do
  sushis << gets.split.map(&:to_i)
end

sushis.sort!{|a,b| a[1] <=> b[1]}.reverse!

used = Hash.new(0)
cands = sushis[0...k]
sushi_types = {}
cands.each{|c| used[c[0]] += 1;sushi_types[c[0]] = true}
sushis = sushis.reject{|s| used[s[0]] != 0}

p used
p cands
p sushis
