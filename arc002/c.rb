n = gets.to_i
tmp_cs = gets.chomp

if n <= 2
  puts 1
  exit
end

if n <= 4
  puts 2
  exit
end

ans = Float::INFINITY

candidates = ["A", "B", "X", "Y"]

chars = []
candidates.each do |c1|
  candidates.each do |c2|
    chars.push("#{c1}#{c2}")
  end
end
chars.uniq!

require 'irb'

chars.each do |l|
  chars.each do |r|
    count = 0
    cs = tmp_cs

    cs = cs.gsub(l, 'l')
    cs = cs.gsub(r, 'r')
    count += cs.count('l')
    count += cs.count('r')
    left_over = tmp_cs.length - count * 2

    # binding.irb if l == "AA" && r == "BB"

    ans = [ans, left_over + count].min
  end
end

puts ans
