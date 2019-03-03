s = gets.chomp
stack = []
ans = 0
s.chars.each do |c|
  if stack[-1] == c
    stack << c
  elsif stack[-1].nil?
    stack << c
  else
    stack.pop
    ans += 2
  end
end

puts ans
