n = gets.to_i
sum = 0
(1..n).each do |i|
  sum += i
  if sum >= n
    puts i
    exit
  end
end
