s = gets.chomp.chars

while str = s.pop(5).join
  break if str == ""
  if str == "erase"
  elsif str == "dream"
  elsif str == "eamer"
    if s.pop(2).join != "dr"
      puts "NO"
      exit
    end
  elsif str == "raser"
    if s.pop != "e"
      puts "NO"
      exit
    end
  else
    puts "NO"
    exit
  end
end

puts "YES"
