a,b,q = gets.split.map(&:to_i)
jinja = []
tera = []
xs = []
hoge = []
a.times do
  j = gets.to_i
  jinja << j
  hoge << [j, "j"]
end
b.times do
  t = gets.to_i
  tera << t
  hoge << [t, "t"]
end
q.times do
  xs << gets.to_i
end

jinja.sort!
tera.sort!
hoge.sort!{|a,b| a[0] <=> b[0]}

xs.each do |x|
end

p hoge
