n,a,b,c = gets.split.map(&:to_i)
ls = []
n.times do
  ls << gets.to_i
end

ls.sort!.reverse!

target = [a,b,c]

n.times do |i|
  target.size.times do |j|
    if target[j] == ls[i]
      target.delete_at(j)
      ls.delete_at(i)
    end
  end
end
