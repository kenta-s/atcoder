n, m = gets.split.map(&:to_i)
scs = []
m.times do
  scs << gets.split.map(&:to_i)
end

ans = Array.new(n, '-')

scs.each do |sc|
  if n != 1 && sc[0] == 1 && sc[1] == 0
    puts -1
    exit
  end

  position = sc[0] - 1
  val = ans[position]

  if val == '-'
    ans[position] = sc[1]
  else
    if ans[position] != sc[1]
      puts -1
      exit
    end
  end
end

if ans[0] == '-'
  if n == 1
    ans[0] = 0
  else
    ans[0] = 1
  end
end

ans = ans.map {|num| num == '-' ? 0 : num }.join.to_i

puts ans
