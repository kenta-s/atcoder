n,m = gets.split.map(&:to_i)
xyzs = []
n.times do
  x,y,z = gets.split.map(&:to_i)
  xyzs << [x,y,z]
end

ans = 0
(0..("111".to_i(2))).each do |i|
  bit = i.to_s(2).rjust(3, "0")
  op = bit.gsub("0","-").gsub("1","+")

  tmp = xyzs.sort do |a,b|
    aval = eval("#{op[0]}#{a[0]}#{op[1]}#{a[1]}#{op[2]}#{a[2]}")
    bval = eval("#{op[0]}#{b[0]}#{op[1]}#{b[1]}#{op[2]}#{b[2]}")
    bval <=> aval
  end

  tmp = tmp.first(m)
  t = tmp.transpose.reduce(0) do |a,e|
    a += (e.reduce(0){|a2,e2| a2+=e2}).abs
  end
  ans = [ans, t].max
end

puts ans
