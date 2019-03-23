n = gets.to_i
ss = []
n.times do
  ss << gets.chomp.chars
end

tmp = ss.shift
ss.each do |s|
  indexes = []
  tmp.each_with_index do |t,i|
    if s.include?(t)
      ind = s.index(t)
      s.delete_at(ind)
    else
      tmp[i] = nil
    end
  end
  tmp.compact!
end

puts tmp.sort.join
