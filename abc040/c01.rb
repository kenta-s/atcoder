n = gets.to_i
as = gets.split.map(&:to_i)

dp = []
dp << 0
dp << (as[0] - as[1]).abs

(2..n-1).each do |i|
  dp[i] = [dp[i-2] + (as[i-2] - as[i]).abs, dp[i-1] + (as[i-1] - as[i]).abs].min
end

puts dp[n-1]
