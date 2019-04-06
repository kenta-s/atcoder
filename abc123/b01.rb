as = []
5.times do
  as << gets.to_i
end

tmp = 0
count = 0
as.each do |a|
  c = (10 - a % 10)
  unless c == 10
    count += c
    tmp = [c, tmp].max
  end
end

count -= tmp
puts as.reduce(0) {|a,e| a+=e} + count
