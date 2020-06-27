s = gets.chomp
len = s.length
len -= 1

(0..len).each do |i|
  (i..len).each do |j|
    str = s[0...i] + s[j..-1]
    
    if str == "keyence"
      puts "YES"
      exit
    end
  end
end

puts "NO"
