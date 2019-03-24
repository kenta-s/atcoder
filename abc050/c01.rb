n = gets.to_i
as = gets.split.map(&:to_i)
as.sort!

h = Hash.new(false)
if n.odd?
  if as.count(0) == 1
    as.delete(0)
  else
    puts 0
    exit
  end
end

cands = Hash.new(false)
1.step(n, 2) do |i|
  cands[n-i] = true
end

as.each_slice(2) do |a|
  if a[0] == a[1] && !h[a[0]] && cands[a[0]]
    h[a[0]] = true
  else
    puts 0
    exit
  end
end

ans = if n.odd?
  2**((n-1)/2)
else
  2**(n/2)
end

puts ans
