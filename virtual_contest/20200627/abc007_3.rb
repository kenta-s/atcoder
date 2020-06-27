r, c = gets.split.map(&:to_i)
sy, sx = gets.split.map(&:to_i)
gy, gx = gets.split.map(&:to_i)

maze = []
r.times do
  maze << gets.chomp.chars
end

visited = {}
$ans = Float::INFINITY
# def bfs(maze, x, y, visited, depth)
#   if x == gx && y == gy
#     $ans = [$ans, depth].min
#   end
# 
#   if maze[x+1] == '.'
#     bfs(maze, x+1, y, visited, depth)
#   end
# end

q = []
q.push([sx-1, sy-1, 0])
gy -= 1
gx -= 1


require 'irb'
# binding.irb
while !q.empty?
  y,x,cost = q.shift

  visited[y] ||= {}
  visited[x+1] ||= {}
  visited[x-1] ||= {}
  visited[y+1] ||= {}
  visited[y-1] ||= {}

  visited[y][x] = true

  if !visited[y+1][x] && y+1 < r && maze[y+1][x] == '.'
    visited[y+1][x] = true
    q.push([y+1, x, cost+1])
  end

  if !visited[y-1][x] && y -1 >= 0 && maze[y-1][x] == '.'
    visited[y-1][x] = true
    q.push([y-1, x, cost+1])
  end

  if !visited[y][x+1] && x+1 < c && maze[y][x+1] == '.'
    visited[y][x+1] = true
    q.push([y, x+1, cost+1])
  end

  if !visited[y][x-1] && x-1 >= 0 && maze[y][x-1] == '.'
    visited[y][x-1] = true
    q.push([y, x-1, cost+1])
  end

  # if x == 4 && y == 3
  #   binding.irb
  # end
  if x == gx && y == gy
    $ans = [$ans, cost].min
  end
end

puts $ans
