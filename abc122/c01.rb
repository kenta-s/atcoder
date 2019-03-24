n,q = gets.split.map(&:to_i)
s = gets.chomp

lrs = []
q.times do
  lrs << gets.split.map(&:to_i)
end

h = Hash.new(0)
h[0] = 0
n.times.with_index(1) do |_, i|
  break if s[i].nil?
  if s[i-1] == "A" && s[i] == "C"
    h[i+1] = h[i] + 1
  else
    h[i+1] = h[i]
  end
end

lrs.each do |lr|
  l,r = lr
  puts h[r] - h[l]
end
