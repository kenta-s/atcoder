chars = gets.chomp.chars
ans = Array.new(chars.size, 0)

groups = []
count_r = 0
count_l = 0
prev = 'R'
i_r = 0
i_l = 0
start_i = 0

chars.size.times do |i|
  next if i == 0
  if i == chars.size - 1
    tmp = chars[start_i..i]
    groups << tmp
    break
  end
  if prev == 'L' && chars[i] == 'R'
    tmp = chars[start_i..i-1]
    groups << tmp
    start_i = i
  end
  prev = chars[i]
end

offset = 0

groups.each do |chunk|
  if chunk.size.odd?
    cnt_r = chunk.size / 2 + 1
  else
    cnt_r = chunk.size / 2
  end

  cnt_l = chunk.size / 2

  chunk.size.times do |i|
    next if i == 0
    if chunk[i - 1] == 'R' && chunk[i] == 'L'
      # sleep 1
      # p [cnt_r, cnt_l]
      if i % 2 == 0
        ans[offset + i - 1] = cnt_l
        ans[offset + i] = cnt_r
      else
        ans[offset + i - 1] = cnt_r
        ans[offset + i] = cnt_l
      end
    end
  end

  offset += chunk.size
end

puts ans.join(' ')
