a,b,x = gets.split.map(&:to_i)

ans = (1..10**18).bsearch{|n| (a * n + b * (n.to_s.length.to_i)) > x} - 1

ans = 0 if ans.nil?
ans = [ans, 10**9].min

puts ans
