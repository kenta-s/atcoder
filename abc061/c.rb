n,k = gets.split.map(&:to_i)
as = []
n.times do
  as << gets.split.map(&:to_i)
end

as.sort!{|a,b| a[0] <=> b[0]}

dp = [[as[0][1], as[0][0]]]
n.times do |i|
  break if as[i+1].nil?
  a, b = as[i+1]
  prev = dp[i]
  dp[i+1] = [prev[0] + b, a]
end


a = dp.bsearch{|a| a[0] >= k}
puts a[1]
