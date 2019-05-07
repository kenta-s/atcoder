n = gets.to_i

cands = [3,5,7]

$nums = []
def dfs(n, cands)
  return if n && n >= 10**9
  cands.each do |c|
    nn = "#{n}#{c}".to_i
    $nums << nn
    dfs(nn, cands)
  end
end

dfs(nil, cands)

nums = []
$nums.each do |num|
  flg = true
  ["3","5","7"].each do |c|
    flg = false unless num.to_s.chars.include?(c)
  end
  if flg
    nums << num
  end
end

nums.sort!

ans = 0
nums.each do |num|
  if num > n
    break
  else
    ans += 1
  end
end

puts ans
