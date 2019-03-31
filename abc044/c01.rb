n, a = gets.split.map(&:to_i)
xs = gets.split.map(&:to_i)

dp = {}
n.times do |j|
  dp[j] = {}
  (0..j).each do |k|
    dp[j][k] = {}
    (0..((xs + [a]).max * n)).each do |s|
      if j == 0 && k == 0 && s == 0
        dp[j][k][s] = 1
      elsif j >= 1 && s < xs[j]
        dp[j-1][k] ||= Hash.new(0)
        dp[j][k][s] = dp[j-1][k][s]
      elsif j >= 1 && k >= 1 && s >= xs[j]
        dp[j][k][s] = dp[j-1][k][s] + dp[j-1][k-1][s-xs[j]]
      else
        dp[j][k][s] = 0
      end
    end
  end
end

p dp

require 'irb'
binding.irb
