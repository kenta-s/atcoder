d,g = gets.split.map(&:to_i)
ps = []
d.times do
  ps << gets.split.map(&:to_i)
end

h = {}
ps.each.with_index(1) do |p,i|
  h[i] ||= []
  (1..p[0]).each do |j|
    if j == p[0]
      h[i] << i * j * 100 + p[1]
    else
      h[i] << i * j * 100
    end
  end
end

total = ps.reduce(0) do |a,e|
  a += e[0]
end

dp = {}

(1..d).each do |i|
  dp[i] ||= {}
  (0...total).each do |j|
    size = h[i].size - 1
    if i == 1
      if size < j
        dp[i][j] = dp[i][j-1]
      else
        dp[i][j] = h[i][j]
      end
    else
      if size < j
        dp[i][j] = [h[i][size] + dp[i-1][j - size -1], dp[i][j-1], dp[i-1][j]].max
      else
        dp[i][j] = [h[i][j], dp[i-1][j]].max
      end
    end
  end
end

(0..total).each do |i|
  if dp[d][i] >= g
    puts i+1
    exit
  end
end
