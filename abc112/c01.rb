require 'matrix'

n = gets.to_i
as = []
n.times do
  as << gets.split.map(&:to_i)
end

xys = []
as.each do |a|
  xys << Vector[*a]
end

x = nil
y = nil
xys.each.with_index do |_, i|
  xys.each.with_index do |_, j|
    next if i == j
    c = xys[i] - xys[j]
    if c.count(0) == 2
      c.each.with_index do |a, k|
        if a != 0
          case k
          when 0
            x = a.abs
          when 1
            y = a.abs
          end
        end
      end
    end
  end
end

require 'pry-byebug'
binding.pry

h = xys[0][2] + (xys[0][0] - x).abs + (xys[0][1] - y).abs
puts "#{x} #{y} #{h}"
