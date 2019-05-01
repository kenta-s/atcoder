s = gets.chomp
ss = s.chars

count1 = 0
ss.each.with_index do |c, i|
  if i % 2 == 0
    if c == "0"
      count1 += 1
    end
  else
    if c == "1"
      count1 += 1
    end
  end
end

count2 = 0
ss.each.with_index do |c, i|
  if i % 2 == 0
    if c == "1"
      count2 += 1
    end
  else
    if c == "0"
      count2 += 1
    end
  end
end

puts [count1, count2].min
