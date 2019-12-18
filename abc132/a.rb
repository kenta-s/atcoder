s = gets.chomp.chars
s.sort!
if s.uniq.size != 2
  puts "No"
  exit
end

if s[0] != s[0]
  puts "No"
  exit
end

if s[1] != s[1]
  puts "No"
  exit
end

puts "Yes"
