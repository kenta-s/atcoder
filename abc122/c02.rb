n,q = gets.split.map(&:to_i)
s = gets.chomp.chars
qs = []
q.times do
  qs << gets.split.map(&:to_i)
end

h = {}
n.times do |i|
  h[i+1] = 0
  next if i == 0
  if (s[i - 1] + s[i]) == "AC"
    h[i+1] = h[i] + 1
  else
    h[i+1] = h[i]
  end
end

qs.each do |q|
  puts h[q[1]] - h[q[0]]
end
