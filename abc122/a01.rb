b = gets.chomp
# gets.split.map(&:to_i)
h = {"A" => "T", "T" => "A", "C" => "G", "G" => "C"}

puts h[b]
