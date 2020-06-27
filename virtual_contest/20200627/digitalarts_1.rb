s = gets.chomp.split
s = s.map(&:chars)
n = gets.to_i
ts = []
n.times do
  t = gets.chomp
  ts << t.chars
end

masked = []
s.each do |w|
  ok1 = true
  ts.each do |t|
    next unless ok1
    next if w.size != t.size

    ok = false
    w.each.with_index do |c, i|
      c1 = w[i]
      c2 = t[i]

      if c1 != c2 && c2 != '*'
        ok = true
      end
    end

    unless ok
      w = ('*' * w.size).chars
      ok1 = false
    end
  end

  masked.push(w.join)
end

puts masked.join(" ")
