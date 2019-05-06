s = gets.chomp.chars
t = gets.chomp.chars

h1 = {}
h2 = {}

ans = "Yes"
t.size.times do |i|
  sc = s[i]
  tc = t[i]
  if h1[sc] && h1[sc] != tc
    ans = "No"
    break
  elsif h2[tc] && h2[tc] != sc
    ans = "No"
    break
  end
  h1[sc] = tc
  h2[tc] = sc
end

puts ans
