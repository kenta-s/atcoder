a,b,k = gets.split.map(&:to_i)
cands = []
(1..[a,b].max).each do |i|
  if a % i == 0 && b % i == 0
    cands << i
  end
end

cands.sort!.reverse!
puts cands[k-1]
