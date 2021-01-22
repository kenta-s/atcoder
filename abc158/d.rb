s = gets.chomp.chars
q = gets.to_i
qs = []

normal = true # direction

q.times do
  qs << gets.chomp.split
end

qs.each do |q|
  if q[0] == '1'
    normal = !normal
  elsif q[0] == '2'
    char = q[2]

    if q[1] == '1'
      if normal
        s.unshift(char)
      else
        s.push(char)
      end
    else
      if normal
        s.push(char)
      else
        s.unshift(char)
      end
    end
  end
end

s.reverse! if !normal

puts s.join
