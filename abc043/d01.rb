s = gets.chomp
n = s.length 

n.times do |i|
  break if s[i+1].nil?
  if s[i] == s[i+1]
    puts "#{i+1} #{i+2}"
    exit
  elsif s[i+2] && s[i] == s[i+2]
    puts "#{i+1} #{i+3}"
    exit
  end
end

puts "-1 -1"
