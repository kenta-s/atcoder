# n = gets.to_i
a,b,c = gets.split.map(&:to_i)

if a < b
  if (a..b).include?(c)
    puts "Yes"
  else
    puts "No"
  end
else
  if (b..a).include?(c)
    puts "Yes"
  else
    puts "No"
  end
end
