n = gets.to_i

bit = []
digit = -2

if n.odd?
  bit.unshift("1")
  n -= 1
else
  bit.unshift("0")
end

while n != 0
  if n % (digit * 2) == 0
    bit.unshift "0"
  else
    bit.unshift "1"
    n -= digit
  end
  digit *= -2
end

puts bit.join
