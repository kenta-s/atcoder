n = gets.to_i
as = []
n.times do |i|
  a = [gets.to_i, i]
  as << a
end

as.sort!.reverse!

n.times do |i|
  if as[0][1] == i
    puts as[1][0]
  else
    puts as[0][0]
  end
end
