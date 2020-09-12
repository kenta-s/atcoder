n = gets.to_i
tmp = n.dup
list = []

list << tmp % 26

while (tmp /= 26) != 0
  if tmp == 1 && tmp % 26 == 1
    break
  end

  list << tmp % 26
end

list.reverse!

chars = ('a'..'y').to_a
chars = ['z'] + chars

ans = list.map do |i|
  chars[i]
end.join

puts ans
