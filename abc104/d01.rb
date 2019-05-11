s = gets.chomp.chars
dp = {
  0 => {
    0 => 1,
    1 => 0,
    2 => 0,
    3 => 0
  }
}

s.each.with_index(1) do |c,i|
  dp[i] ||= {}
  dp[i][0] = dp[i-1][0]
  dp[i][1] = dp[i-1][1]
  dp[i][2] = dp[i-1][2]
  dp[i][3] = dp[i-1][3]
  case c
  when "A"
    dp[i][1] += dp[i-1][0]
  when "B"
    dp[i][2] += dp[i-1][1]
  when "C"
    dp[i][3] += dp[i-1][2]
  when "?"
    dp[i][0] += dp[i-1][0] * 2
    dp[i][1] += dp[i-1][1] * 2
    dp[i][2] += dp[i-1][2] * 2

    dp[i][1] += dp[i-1][0]
    dp[i][2] += dp[i-1][1]
    dp[i][3] += dp[i-1][2]
  else
    raise "okashi-zo"
  end
end

require 'pry-byebug'
binding.pry

puts dp[s.size][3]
