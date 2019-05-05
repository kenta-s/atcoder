require 'set'

n = gets.to_i
as = []
n.times do
  as << gets.split.map(&:to_i)
end

dp = {}

(0...n).each do |i|
  dp[i] ||= []
  (0..2).each do |j|
    if i == 0
      dp[i][j] = as[i][j]
    else
      case j
      when 0
        tmp = [1,2]
      when 1
        tmp = [0,2]
      when 2
        tmp = [0,1]
      end
      # tmp = (Set.new([0,1,2]) ^ [j]).to_a
      dp[i][j] = [dp[i-1][tmp[0]], dp[i-1][tmp[1]]].max + as[i][j]
    end
  end
end

puts dp[n-1].max
