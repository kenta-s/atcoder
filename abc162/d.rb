n = gets.to_i
s = gets.chomp.chars

r = []
g = []
b = []

s.each.with_index do |c, i|
  case c
  when 'R'
    r << i
  when 'G'
    g << i
  when 'B'
    b << i
  end
end

r_count = r.size
g_count = g.size
b_count = b.size
total = r_count * g_count * b_count

count = 0
(0..n-1).each do |i|
  (i+1..n-1).each do |j|
    diff = j - i
    a = s[i]
    b = s[j]
    c = s[j+diff]

    next if a.nil? || b.nil? || c.nil?

    if a != b && a != c && b != c
      count += 1
    end
  end
end

puts total - count
