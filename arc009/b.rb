bs = gets.split.map(&:to_i)
n = gets.to_i

nums = []
n.times do
  nums << gets.to_i
end

table = {}
bs.each.with_index do |b, i|
  table[b] = i
end

h = []
nums.each do |num|
  replaced = num.to_s.chars.map do |c|
    table[c.to_i]
  end.join.to_i

  h << [num, replaced]
end

h = h.sort_by{|num_array| num_array[1]}
h.each do |num_array|
  puts num_array[0]
end
