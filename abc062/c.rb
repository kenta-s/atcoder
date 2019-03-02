h,w = gets.split.map(&:to_i)
ans = Float::INFINITY

if h % 3 == 0
  puts 0
  exit
elsif w % 3 == 0
  puts 0
  exit
end

h.times do |i|
  rem = h - (i+1)
  a = (i+1) * w
  if w % 2 == 0
    b = (w / 2) * rem
    c = (w / 2) * rem
  else
    b = (w / 2) * rem
    c = (w / 2 + 1) * rem
  end

  tmp = [a,b,c].sort
  ans = [ans, tmp[-1] - tmp[0]].min
end

w.times do |i|
  rem = w - (i+1)
  a = (i+1) * h
  if h % 2 == 0
    b = (h / 2) * rem
    c = (h / 2) * rem
  else
    b = (h / 2) * rem
    c = (h / 2 + 1) * rem
  end

  tmp = [a,b,c].sort
  ans = [ans, tmp[-1] - tmp[0]].min
end

h.times do |i|
  rem = h - (i+1)
  a = (i+1) * w
  if rem % 2 == 0
    b = (rem / 2) * w
    c = (rem / 2) * w
  else
    b = (rem / 2) * w
    c = (rem / 2 + 1) * w
  end

  tmp = [a,b,c].sort
  ans = [ans, tmp[-1] - tmp[0]].min
end

w.times do |i|
  rem = w - (i+1)
  a = (i+1) * h
  if rem % 2 == 0
    b = (rem / 2) * h
    c = (rem / 2) * h
  else
    b = (rem / 2) * h
    c = (rem / 2 + 1) * h
  end

  tmp = [a,b,c].sort
  ans = [ans, tmp[-1] - tmp[0]].min
end

puts ans
