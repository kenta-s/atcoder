A,B = gets.split.map(&:to_i)
B.to_s(2)
bit = ""
B/2 + B/2
100
bits = []

(1..100).to_a.reverse.each do |i|
  if 2**i > B
    bits << 0
  else
    bits << B / (2**i)
  end
end

bits << B / 2

# if A == 2
#   bits_a = []
#   (1..100).to_a.reverse.each do |i|
#     bits_a << 0
#   end
#   
#   bits_a << 0
# else
  bits_a = []
  (1..100).to_a.reverse.each do |i|
    if 2**i > (A)
      bits_a << 0
    else
      bits_a << (A) / (2**i)
    end
  end
  
  bits_a << (A) / 2
# end

p bits
p bits_a

ans = ""
b = []
(0..100).to_a.each do |i|
  if A == B
    hoge = bits[i]
  else
    hoge = (bits[i] - bits_a[i])
  end
  if hoge.odd?
    ans << "1"
  else
    ans << "0"
  end
end

puts ans.to_i(2)
