# Adjacency matrix graph
class AMGraph
  attr :graph, :visited

  # n: 頂点の数
  def initialize(n)
    @n = n
    reset
  end

  # like: 1, 2
  def set_side(side)
    a, b = side
    @graph[a][b] = 1
    @graph[b][a] = 1
  end

  def visit(node)
    @visited[node] = true
  end

  def recursively_visit(node)
    return if visited?(node)
    visit(node)
    visitable_nodes(node).each do |node|
      recursively_visit(node)
    end
  end

  def visited?(node)
    @visited[node]
  end

  def visitable_nodes(node)
    nodes = []
    @graph[node].each do |node|
      next if node[0] == node
      next if node[1] != 1
      next if visited?(node[0])
      nodes << node[0]
    end
    nodes
  end

  def all_visited?
    @nodes.each do |node|
      return false unless @visited[node]
    end
    true
  end

  def reset_visited
    @visited = Hash.new(false)
  end

  def reset
    @visited = Hash.new(false)
    @graph = {}
    @nodes = []
    @n.times.with_index(1) do |_,i|
      @nodes << i
      @visited[i] = false
      @graph[i] = {}
      @n.times.with_index(1) do |_,j|
        @graph[i][j] = 0
      end
    end
  end
end

n, m = gets.split.map(&:to_i)
$g = AMGraph.new(n)

m.times do
  $g.set_side(gets.split.map(&:to_i))
end

$ans = 0

def dfs(node)
  if $g.all_visited?
    $ans += 1
    return
  end
  $g.visitable_nodes(node).each do |nd|
    next if $g.visited?(nd)
    $g.visit(nd)
    dfs(nd)
    $g.visited[nd] = false
  end
end

$g.visit(1)
dfs(1)

puts $ans
