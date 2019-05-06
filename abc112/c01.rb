n = gets.to_i
as = []
n.times do
  as << gets.split.map(&:to_i)
end

cx = nil
cy = nil
h = nil

(0..100).each do |x|
  (0..100).each do |y|
    a = as.find{|a| a[2] != 0}
    h = a[2] + (a[0] - x).abs + (a[1] - y).abs
    flg = as.all? do |a|
      a[2] == [h - (a[0] - x).abs - (a[1] - y).abs, 0].max
    end
    if flg
      puts "#{x} #{y} #{h}"
      exit
    end
  end
end
