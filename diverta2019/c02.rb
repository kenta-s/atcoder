n = gets.to_i
ss = []

ans = 0

start_with_b = 0
end_with_a = 0
both = 0

n.times do
  s = gets.chomp
  ans += s.scan(/AB/).size
  if s[0] == 'B' && s[-1] == 'A'
    both += 1
  elsif s[0] == 'B'
    start_with_b += 1
  elsif s[-1] == 'A'
    end_with_a += 1
  end
end

if both > 0
  ans += both - 1
  if end_with_a > 0
    end_with_a -= 1
    ans += 1
  end
  
  if start_with_b > 0
    start_with_b -= 1
    ans += 1
  end
end

ans += [start_with_b, end_with_a].min

puts ans
