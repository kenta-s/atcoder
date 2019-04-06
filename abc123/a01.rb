as = []
5.times do
  as << gets.to_i
end
k = gets.to_i

as.each do |a1|
  as.each do |a2|
    if (a1 - a2).abs > k
      puts ":("
      exit
    end
  end
end

puts "Yay!"
# n = gets.to_i
# as = gets.split.map(&:to_i)
