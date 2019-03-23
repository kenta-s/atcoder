n = gets.to_i
s = gets.chomp
x = 0
ans = 0

s.chars.each do |c|
  if c == "I"
    x += 1
  elsif c == "D"
    x -= 1
  end
  ans = [ans, x].max
end

puts ans
