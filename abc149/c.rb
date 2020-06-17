require 'prime'
x = gets.to_i

ans = nil
(x..100003).to_a.each do |n|
  if n.prime?
    ans = n
    break
  end
end

puts ans
