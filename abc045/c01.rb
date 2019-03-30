s = gets.chomp

chars = s.chars

ans = 0
(0..("1" * (s.length - 1)).to_i(2)).each do |i|
  bit = i.to_s(2).rjust(s.length-1, "0").chars
  tmp = chars[0].dup

  chars.size.times.with_index(1) do |t, j|
    next if chars[j].nil?
    tmp << ((bit[j-1] == "1") ? "+" : "")
    tmp << chars[j]
  end
  ans += eval(tmp)
end

puts ans
