n, a = gets.split.map(&:to_i)
xs = gets.split.map(&:to_i)

ans = 0

(0..("1" * n).to_i(2)).each do |index|
  bit = index.to_s(2).rjust(n, "0").chars
  tmp = 0
  count = 0
  bit.each.with_index do |b, i|
    if b == "1"
      tmp += xs[i]
      count += 1
    end
  end
  if count > 0 && tmp.to_f / count == a
    ans += 1
  end
end

puts ans
