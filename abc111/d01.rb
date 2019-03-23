N = gets.to_i
xys = []
N.times do
  xys << gets.split.map(&:to_i)
end

m = xys[0][0].abs + xys[0][1].abs
xys.each do |xy|
  if m.odd? != (xy[0].abs + xy[1].abs).odd?
    puts -1
    exit
  end
  m = [m, xy[0].abs + xy[1].abs].max
end

puts m
puts (["1" * m]).join(" ")

xys.each do |xy|
  tmp = m
  x = xy[0]
  y = xy[1]

  str = ""
  tmp -= x.abs
  tmp -= y.abs
  if x < 0
    str << "L" * x.abs
  elsif x > 0
    str << "R" * x.abs
  end
  if y < 0
    str << "D" * y.abs
  elsif y > 0
    str << "U" * y.abs
  end

  str << "L" * (tmp / 2)
  str << "R" * (tmp / 2)

  puts str
end
