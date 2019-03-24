s = gets.chomp.chars

ans = 0
now = s.shift
s.each do |c|
  if now != c
    ans += 1
    now = c
  end
end

puts ans
