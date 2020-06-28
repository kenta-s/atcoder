h, w = gets.split.map(&:to_i)
n = gets.to_i
as = gets.split.map(&:to_i)
table = Array.new(h, Array.new(w))
visited = Array.new(h, Array.new(w))
visited = {}

if w == 1
  dir = 'down'
else
  dir = 'right'
end
idx = 0
i = 0
j = 0
visited[0] = {}
visited[0][0] = 0

as[idx] -= 1
while (idx != n-1) || as[idx] != 0
  visited[i] ||= {}
  visited[i+1] ||= {}

  idx += 1 if as[idx] == 0
  as[idx] -= 1

  if dir == 'right'
    if j == w - 1
      i += 1
      dir = 'down'
      visited[i][j] = idx
    else
      j += 1
      visited[i][j] = idx
    end
  elsif dir == 'left'
    if j == 0
      i += 1
      dir = 'down'
      visited[i][j] = idx
    else
      j -= 1
      visited[i][j] = idx
    end
  elsif dir == 'down'
    if j == 0 && 0 == w - 1
      i += 1
      dir = 'down'
      visited[i][j] = idx
    elsif j == 0
      j += 1
      dir = 'right'
      visited[i][j] = idx
    else
      j -= 1
      dir = 'left'
      visited[i][j] = idx
    end
  end
end

h.times do |i|
  tmp = visited[i].dup
  tmp = visited[i-1].dup if tmp.nil?
  tmp2 = []
  w.times do |j|
    tmp2 << tmp[j] + 1
  end
  puts tmp2.join(' ')
end
