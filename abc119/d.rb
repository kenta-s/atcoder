a,b,q = gets.split.map(&:to_i)
jinja = []
tera = []
xs = []
a.times do
  j = gets.to_i
  jinja << j
end
b.times do
  t = gets.to_i
  tera << t
end
q.times do
  xs << gets.to_i
end

jinja.sort!
tera.sort!

def search_low(current, j_or_t)
  i = j_or_t.bsearch_index{|j| j > current}
  if i.nil?
    i = -1
  elsif i != 0
    i = i-1
  elsif i == 0
    return [nil, Float::INFINITY]
  end
  [j_or_t[i], (current-j_or_t[i]).abs]
end

def search_high(current, j_or_t)
  i = j_or_t.bsearch_index{|j| j > current}
  if i.nil?
    i = -1
  end
  [j_or_t[i], (current-j_or_t[i]).abs]
end

def hoge1(x, jinja, tera)
  current1, cost1 = search_low(x, jinja)
  return Float::INFINITY if current1.nil?
  current2, cost2 = search_low(current1, tera)
  cost2 = Float::INFINITY if current2.nil?
  current3, cost3 = search_high(current1, tera)
  cost3 = Float::INFINITY if current3.nil?
  [cost1+cost2, cost1+cost3].min
end

def hoge2(x, jinja, tera)
  current1, cost1 = search_high(x, jinja)
  return Float::INFINITY if current1.nil?
  current2, cost2 = search_low(current1, tera)
  cost2 = Float::INFINITY if current2.nil?
  current3, cost3 = search_high(current1, tera)
  cost3 = Float::INFINITY if current3.nil?
  [cost1+cost2, cost1+cost3].min
end

def hoge3(x, jinja, tera)
  current1, cost1 = search_low(x, tera)
  return Float::INFINITY if current1.nil?
  current2, cost2 = search_low(current1, jinja)
  cost2 = Float::INFINITY if current2.nil?
  current3, cost3 = search_high(current1, jinja)
  cost3 = Float::INFINITY if current3.nil?
  [cost1+cost2, cost1+cost3].min
end

def hoge4(x, jinja, tera)
  current1, cost1 = search_high(x, tera)
  return Float::INFINITY if current1.nil?
  current2, cost2 = search_low(current1, jinja)
  cost2 = Float::INFINITY if current2.nil?
  current3, cost3 = search_high(current1, jinja)
  cost3 = Float::INFINITY if current3.nil?
  [cost1+cost2, cost1+cost3].min
end

xs.each do |x|
  puts [
    hoge1(x, jinja, tera),
    hoge2(x, jinja, tera),
    hoge3(x, jinja, tera),
    hoge4(x, jinja, tera)
  ].min
end
