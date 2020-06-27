k,t = gets.split.map(&:to_i)
as = gets.split.map(&:to_i)
as.sort! {|a,b| b <=> a}

as = as.map.with_index do |a, i|
  [a, i]
end

last_cake = nil
ans = 0

as.sort! {|a,b| b <=> a}

while as[0][0] != 0
  if last_cake.nil?
    last_cake = 0
    as[0][0] -= 1
    next
  end

  if as[0][1] == last_cake
    if as[1].nil? || as[1][0] == 0
      ans += 1
      as[0][0] -= 1
      last_cake = as[0][1]
    else
      as[1][0] -= 1
      last_cake = as[1][1]
    end
  else
    as[0][0] -= 1
    last_cake = as[0][1]
  end

  as.sort! {|a,b| b <=> a}
end

puts ans
