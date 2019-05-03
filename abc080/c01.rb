n = gets.to_i
ff = []
n.times do
  ff << gets.split.map(&:to_i)
end

pp = []
n.times do
  pp << gets.split.map(&:to_i)
end

ans = -Float::INFINITY
(0..1023).each do |i|
  cnt = 0
  flg = false
  ff.each.with_index do |f,j|
    f = f.join.to_i(2)
    tmp = (i & f).to_s(2).count("1")
    cnt += pp[j][tmp]
    flg = true if tmp != 0
  end
  ans = [ans, cnt].max if flg
end

puts ans
