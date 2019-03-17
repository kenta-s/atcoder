h,w,k = gets.split.map(&:to_i)

def hoge(digit, from_w, to_w)
  from = ("0" * digit).to_i(2)
  to = ("1" * digit).to_i(2)
  count = 0
  (from..to).each do |i|
    bit = i.to_s(2).rjust(digit, "0")
    next if bit.include?("11")
    next if (from_w - to_w).abs >= 2
    right = from_w == bit.length ? nil : bit[from_w]
    left = from_w == 0 ? nil : bit[from_w - 1]
    direction = if to_w < from_w
                  count += 1 if left == "1" && right != "1"
    elsif to_w == from_w
                  count += 1 if left != "1" && right != "1"
    else
                  count += 1 if left != "1" && right == "1"
    end
  end
  count
end

dp = []

h.times do |i|
  dp[i] ||= []
  w.times do |j|
    dp[i][j] ||= 0
    if i == 0
      dp[i][j] = hoge(w-1, 0, j)
    else
      if j == 0
        dp[i][j] += (hoge(w-1, j, j) * (dp[i-1][j] || 0))
        dp[i][j] += (hoge(w-1, j+1, j) * (dp[i-1][j+1] || 0))
      elsif j == w
        dp[i][j] += (hoge(w-1, j-1, j) * (dp[i-1][j-1] || 0))
        dp[i][j] += (hoge(w-1, j, j) * (dp[i-1][j] || 0))
      else
        dp[i][j] += (hoge(w-1, j-1, j) * (dp[i-1][j-1] || 0))
        dp[i][j] += (hoge(w-1, j, j) * (dp[i-1][j] || 0))
        dp[i][j] += (hoge(w-1, j+1, j) * (dp[i-1][j+1] || 0))
      end
    end
  end
end

puts dp[-1][k-1] % 1000000007
