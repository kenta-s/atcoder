n,k = gets.split.map(&:to_i)
s = gets.chomp.chars

tmp = []
current = s[0]
sum = 0
s.each do |c|
  if current == c
    sum += 1
  else
    tmp << {val: sum, type: current}
    sum = 1
    current = c
  end
end

tmp << {val: sum, type: current}

if tmp[0][:type] == "0"
  tmp.unshift({val: 0, type: "1"})
end

if tmp[-1][:type] == "0"
  tmp.push({val: 0, type: "1"})
end

take = k*2+1
total = tmp[0, take].reduce(0) {|a,e| a+=e[:val]}

ans = total

2.step(tmp.size, 2) do |i|
  next if tmp[i-1].nil?
  break if tmp[i+take-1].nil?
  total -= tmp[i-2][:val]
  total -= tmp[i-1][:val]
  total += tmp[i+take-2][:val]
  total += tmp[i+take-1][:val]
  ans = [ans, total].max
end

puts ans
