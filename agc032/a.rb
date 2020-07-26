n = gets.to_i
bs = gets.split.map(&:to_i)

$history = []

def dfs(bs, history)
  if bs.empty?
    $history = history
    return
  end

  bs.each.with_index(1) do |b, i|
    if b == i
      new_bs = bs.dup
      new_bs.delete_at(i-1)
      dfs(new_bs, history + [i])
    end
  end
end

dfs(bs, [])

if $history.empty?
  puts -1
else
  $history.reverse.each do |h|
    puts h
  end
end
