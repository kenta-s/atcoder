A,B = gets.split.map(&:to_i)

max_length = 50

bit = ""
(0...max_length).each do |i|
  num = 2**(max_length-i)
  a = ((A)/num)*(num/2)
  b = [((A) % num) - (num/2), 0].max
  a_count = a+b

  c = ((B+1)/num)*(num/2)
  d = [((B+1) % num) - (num/2), 0].max
  b_count = c+d
  tmp = b_count - a_count
  if tmp.odd?
    bit << "1"
  else
    bit << "0"
  end
end

puts bit.to_i(2)
