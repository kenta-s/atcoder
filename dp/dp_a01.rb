n = gets.to_i
hs = gets.split.map(&:to_i)
dp = {}
dp[1] = 0
dp[2] = (hs[0] - hs[1]).abs
n.times.with_index(1) do |_,i|
  next if i == 1 || i == 2
  dp[i] = [dp[i-1] + (hs[i-2]-hs[i-1]).abs, dp[i-2] + (hs[i-3]-hs[i-1]).abs].min
end

puts dp[n]
