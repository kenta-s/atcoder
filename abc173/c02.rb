h,w,k = gets.split.map(&:to_i)
table = []
h.times do
  table << gets.chomp.chars
end

$ans = 0
(0..('1' * h).to_i(2)).each do |i|
  table2 = table.dup

  i.to_s(2).rjust(h, '0').chars.each.with_index do |bit1, i1|
    if bit1 == '1'
      table2[i1] = ['x'] * w
    end
  end

  (0..('1' * w).to_i(2)).each do |j|
    table3 = table2.dup

    j.to_s(2).rjust(w, '0').chars.each.with_index do |bit2, i2|
      if bit2 == '1'
        tmp = table3.transpose.dup
        tmp[i2] = ['x'] * h
        table3 = tmp.transpose
      end
    end

    cnt = 0
    table3.each do |row|
      row.each do |point|
        if point == '#'
          cnt += 1
        end
      end
    end

    $ans += 1 if cnt == k
  end

end

puts $ans
