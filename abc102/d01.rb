n = gets.to_i
as = gets.split.map(&:to_i)

h = {0 => as[0]}
as.each.with_index do |a,i|
  next if i == 0
  h[i] = h[i-1] + a
end

ans = Float::INFINITY
(2..n-2).each do |i|
  left = as[0, i]
  left_sum = h[i-1]
  left_i = Float::INFINITY
  l_tmp = Float::INFINITY
  (1..left.size-1).bsearch do |l|
    lsum = left[0, l].reduce(0){|a,e|a+=e}
    tmp = ((left_sum / 2) - lsum).abs
    l_tmp = [l_tmp, tmp].min
    if l_tmp == tmp
      left_i = lsum
    end
    tmp
  end
  right = as[i, n-i]
  right_sum = h[n-1] - h[i-1]
  right_i = Float::INFINITY
  r_tmp = Float::INFINITY
  (1..right.size-1).bsearch do |l|
    rsum = right[0, l].reduce(0){|a,e|a+=e}
    tmp = ((right_sum / 2) - rsum).abs
    r_tmp = [r_tmp, tmp].min
    if r_tmp == tmp
      right_i = rsum
    end
    tmp
  end

  array = [left_i, left_sum - left_i, right_i, right_sum - right_i]
  ans = [ans, array.max - array.min].min
end

puts ans
