if !ENV['RUBY_THREAD_VM_STACK_SIZE']
  require 'rubygems';RUBY=Gem.ruby
  exec({'RUBY_THREAD_VM_STACK_SIZE'=>'100000000'},RUBY,$0)
end
$h,$w = gets.split.map(&:to_i)
$visited = {}
$cs = []
$h.times do
  $cs << gets.chomp.chars
end

def dfs(i, j)
  return if i < 0 || j < 0
  return if i >= $h || j >= $w
  return if $cs[i][j] == '#'
  $visited[i] ||= {}
  return if $visited[i][j]
  $visited[i][j] = true
  if $cs[i][j] == 'g'
    puts 'Yes'
    exit
  end
  dfs(i + 1, j)
  dfs(i - 1, j)
  dfs(i, j + 1)
  dfs(i, j - 1)
end

$cs.each.with_index do |row,i|
  row.each.with_index do |target,j|
    if target == 's'
      dfs(i,j)
    end
  end
end

puts 'No'
