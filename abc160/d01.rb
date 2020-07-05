# WIP
class WarshallFloyd
  attr_reader :d, :n

  # n: count of nodes
  def initialize(n)
    @n = n
    @d = {}
    (1..n).each do |i|
      d[i] = Hash.new(Float::INFINITY)
      d[i][i] = 0
    end
  end

  def add_side(side, cost)
    a, b = side
    d[a][b] = cost
    d[b][a] = cost
  end

  def calc_shortest_paths
    (1..n).each do |k|
      (1..n).each do |i|
        (1..n).each do |j|
          d[i][j] = [d[i][j], d[i][k] + d[k][j]].min
        end
      end
    end
  end
end

n,x,y = gets.split.map(&:to_i)

wf = WarshallFloyd.new(n)

(1..n-1).each do |i|
  wf.add_side([i, i+1], 1)
end

wf.add_side([x,y],1)

wf.calc_shortest_paths
p wf
