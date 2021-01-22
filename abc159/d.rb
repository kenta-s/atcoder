def fact(n)
  return 1 if n == 0

  fact(n-1) * n
end

n = gets.to_i
original_as = gets.split.map(&:to_i)
as = original_as.dup
as.sort!

h = {}

as.each do |a|
  if h[a].nil?
    h[a] = 1
  else
    h[a] += 1
  end
end

total = 0
ans_h = {}
h.keys.each do |key|
  ans_h[key] = {}
  value = h[key]
  if value == 1
    ans_h[key][0] = 0
    ans_h[key][1] = 0
  elsif value == 2
    # ans_h[key][0] == ans for n-1
    ans_h[key][0] = 0

    # ans_h[key][1] == ans for n
    ans_h[key][1] = 1
  elsif value > 2
    ans_h[key][0] = ((value-1)**2 - (value-1))/2
    ans_h[key][1] = (value**2 - value)/2
  end

  total += ans_h[key][1]
end

original_as.each do |a|
  puts total - ans_h[a][1] + ans_h[a][0]
end
