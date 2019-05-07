n = gets.to_i
hs = gets.split.map(&:to_i)

def split(hs)
  result = []
  tmp = []
  hs.each do |h|
    if h == 0
      result << tmp if !tmp.empty?
      tmp = []
    else
      tmp << h
    end
  end

  result << tmp if !tmp.empty?
  result
end

$ans = 0

def water(hs)
  return if hs.empty?
  hsg = split(hs)
  hsg.each do |hs|
    hs.size.times do |i|
      hs[i] -= 1
    end
    $ans += 1
    water(hs)
  end
end

water(hs)

puts $ans
