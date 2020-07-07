h,w,k = gets.split.map(&:to_i)

table = []
h.times do
  table << gets.chomp.chars
end

ans = 0

(0..('1'*h).to_i(2)).each do |h_bit|
  h_bit = h_bit.to_s(2).rjust(h, '0').chars
  (0..('1'*w).to_i(2)).each do |w_bit|
    w_bit = w_bit.to_s(2).rjust(w, '0').chars
    black = 0

    h_bit.each.with_index do |hb, i|
      w_bit.each.with_index do |wb, j|
        if hb == '1' && wb == '1'
          black += 1 if table[i][j] == '#'
        end
      end
    end

    if black == k
      ans += 1
    end
  end
end

puts ans
