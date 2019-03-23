n = gets.to_i
as = gets.split.map(&:to_i)

cnt1 = 0
sum = as[0]
n.times.with_index(1) do |_,i|
  break if as[i].nil?
  if sum < 0
    if sum + as[i] > 0
      sum += as[i]
      next
    else
      x = 1 - sum - as[i]
      cnt1 += x
      sum = 1
    end
  elsif sum > 0
    if sum + as[i] < 0
      sum += as[i]
      next
    else
      x = -1 - sum - as[i]
      cnt1 += x.abs
      sum = -1
    end
  end
end

cnt2 = (as[0] * 2).abs
sum = as[0] * -1
n.times.with_index(1) do |_,i|
  break if as[i].nil?
  if sum < 0
    if sum + as[i] > 0
      sum += as[i]
      next
    else
      x = 1 - sum - as[i]
      cnt2 += x
      sum = 1
    end
  elsif sum > 0
    if sum + as[i] < 0
      sum += as[i]
      next
    else
      x = -1 - sum - as[i]
      cnt2 += x.abs
      sum = -1
    end
  end
end
puts [cnt1, cnt2].min
