n = gets.to_i
as = gets.split.map(&:to_i)

cnt1 = 0
sum = as[0]
n.times.with_index(1) do |_,i|
  break if as[i].nil?
  tmp = as[i]
  if sum < 0
    if as[i] < 0
      cnt1 += as[i].abs + 1
      tmp -= 1
    end
  else
    if as[i] > 0
      cnt1 += as[i].abs + 1
      tmp *= -1
      tmp -= 1
    end
  end
  sum += tmp
  p "a: #{as[i]}"
  p "sum: #{sum}"
  p "cnt: #{cnt1}"
  p "--------"
end

puts cnt1
