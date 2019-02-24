n = gets.to_i
yen = 0
n.times do
  a, b = gets.chomp.split
  a = a.to_f
  if b == "JPY"
    yen += a
  else
    yen += a * 380000.0
  end
end

puts yen
