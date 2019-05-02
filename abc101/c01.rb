n,k = gets.split.map(&:to_i)
_ = gets.split.map(&:to_i)

ans = if (n - k) % (k - 1) == 0
  1 + ((n-k) / (k-1))
else
  2 + ((n-k) / (k-1))
end

puts ans
