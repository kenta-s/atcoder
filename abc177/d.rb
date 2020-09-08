class UnionFind
  attr :parent

  def initialize(nodes)
    @parent = {}
    nodes.each do |node|
      parent[node] = -1
    end
  end

  def root(x)
    if parent[x] < 0
      x
    else
      parent[x] = root(parent[x])
    end
  end

  def size(x)
    return -parent[root(x)]
  end

  def unite(x, y)
    rx = root(x)
    ry = root(y)
    if rx == ry
      return false
    else
      if size(rx) < size(ry)
        rx, ry = ry, rx
      end

      parent[rx] += parent[ry]
      parent[ry] = rx

      return true
    end
  end
end

n,m = gets.split.map(&:to_i)
uf = UnionFind.new((1..n).to_a)

m.times do
  a, b = gets.split.map(&:to_i)
  uf.unite(a, b)
end

ans = -1
(1..n).each do |i|
  ans = [ans, uf.size(i)].max
end

puts ans
