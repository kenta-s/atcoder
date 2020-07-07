n,x,y = gets.split.map(&:to_i)

h = {}
(n-1).times do |i|
  h[i+1] ||= {}
  h[i+1][i+2] = 1
end

h[x][y] = 1

q = []
q.push([1, 2])

visited = {}

while !q.empty?
  prev, current = q.shift
  visited[prev] ||= {}
  visited[prev][current] = true
  h[prev][current] = [h[prev][current], 1].min

  (1..current-1).each do |i|
    if current == 1
    else
      if h[i][prev].nil?
      else
        if h[i][current]
          h[i][current] = [h[i][prev] + 1, h[i][current]].min
        else
          h[i][current] = h[i][prev] + 1
        end
      end
    end
  end

  if current == n
    break
  end
  h[current].keys.each do |i|
    visited[current] ||= {}
    unless visited[current][i]
      q.push([current, i])
    end
  end
end

ans = {}
(n-1).times do |i|
  i += 1
  h[i].each do |key, val|
    ans[val] ||= 0
    ans[val] += 1
  end
end

(n-1).times do |i|
  puts ans[i+1] || 0
end
