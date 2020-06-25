n = gets.to_i
tmp_cs = gets.chomp

if n <= 2
  puts 1
  exit
end

if n <= 4
  puts 2
  exit
end

ans = Float::INFINITY

chars = ["A", "A", "B", "B", "X", "X", "Y", "Y"]
max = 0
max_str = ''
(0..('1'*8).to_i(2)).each do |i|
  bit1 = i.to_s(2).rjust(8, '0')
  next if bit1.count('1') != 2

  (0..('1'*8).to_i(2)).each do |j|
    cs = tmp_cs
    bit2 = j.to_s(2).rjust(8, '0')
    next if bit2.count('1') != 2
    next if bit1 == bit2

    str1 = bit1.chars.map.with_index do |b, k|
      if b == '1'
        chars[k]
      else
        nil
      end
    end.compact.join

    str2 = bit2.chars.map.with_index do |b, k|
      if b == '1'
        chars[k]
      else
        nil
      end
    end.compact.join

    # cnt1 = cs.scan(/#{str1}/).count
    cs = cs.gsub(str1, '')
    cnt1 = (tmp_cs.length - cs.length)/2
    # cnt2 = cs.scan(/#{str2}/).count
    cs2 = cs.gsub(str2, '')
    cnt2 = (cs.length - cs2.length)/2

    cnt = cnt1 + cnt2 + cs2.length
    ans = [ans, cnt].min
  end
end

puts ans
