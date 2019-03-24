s = gets.chomp.chars
acgt = ["A", "C", "G", "T"]
# gets.split.map(&:to_i)

ans = 0
tmp = 0
s.each do |c|
  if acgt.include?(c)
    tmp += 1 
  else
    ans = [ans, tmp].max
    tmp = 0
  end
end

ans = [ans, tmp].max

puts ans
