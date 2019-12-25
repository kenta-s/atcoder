n = gets.to_i
hs = gets.split.map(&:to_i)

max = -Float::INFINITY
min = nil

hs.each.with_index do |h, i|
  if i == 0
    max = h
  else
    if max < h
      max = h
      min = nil
    else
      min = h
    end

    if min && (max - min) > 1
      puts "No"
      exit
    end
  end
end

puts "Yes"
