n,m = gets.split.map(&:to_i)
cakes = []
n.times do
  x,y,z = gets.split.map(&:to_i)
  cakes << [x,y,z]
end

candidates = []
(0..7).each do |i|
  bit = i.to_s(2).rjust(3, "0")
  x, y, z = bit.gsub("0","+").gsub("1","-").chars
  cakes.sort! do |a,b|
    tmp1 = eval("#{x}#{a[0]} + #{y}#{a[1]} + #{z}#{a[2]}")
    tmp2 = eval("#{x}#{b[0]} + #{y}#{b[1]} + #{z}#{b[2]}")
    tmp2 <=> tmp1
  end
  tmp = cakes.take(m).transpose.map do |c|
    c.reduce(0) do |a,e|
      a+=e
    end
  end
  candidates << tmp.reduce(0) {|a,e|a+=e.abs}
end

puts candidates.max
