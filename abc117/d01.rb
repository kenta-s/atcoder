n,k = gets.split.map(&:to_i)
as = gets.split.map(&:to_i)

digit_len = k.to_s(2).length
bits = []
as.each do |a|
  bits << a.to_s(2).rjust(digit_len, "0").chars
end

p bits
p bits.transpose
