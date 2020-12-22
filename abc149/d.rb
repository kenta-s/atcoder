n, k = gets.split.map(&:to_i)
r,s,p = gets.split.map(&:to_i)
t = gets.chomp

ts = t.chars
nums = ts.map do |a|
  if a == 'r'
    p
  elsif a == 's'
    r
  elsif a == 'p'
    s
  else
    raise
  end
end

cnt = 0
nums.each.with_index do |num, i|
  prev = i - k
  if prev >= 0
    if ts[i] == ts[prev]
      ts[i] = 'x'
    else
      cnt += num
    end
  else
    cnt += num
  end
end

puts cnt
