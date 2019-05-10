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
  tmp = xyzs.sort_by do |xyz|
    ["#{op[0]}#{xyz[0]}", "#{op[1]}#{xyz[1]}", "#{op[2]}#{xyz[2]}"]
  end.reverse
  tmp = tmp.first(m)
  t = tmp.transpose.reduce(0) do |a,e|
    a += (e.reduce(0){|a2,e2| a2+=e2}).abs
  end
  # p op
  # if ans < t
  #   p xyzs
  #   p tmp
  # end
  ans = [ans, t].max
end

puts ans
