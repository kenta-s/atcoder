require 'prime'

def common_divisors(n)
  return [1] if n == 1

  tmp = n.prime_division.map do |e|
    (0..e[1]).to_a.map do |i|
      e[0]**i
    end
  end

  tmp.reduce{|p,q| p.product(q)}.map do |a|
    [a].flatten.reduce(&:*)
  end.sort
end

n,m = gets.split.map(&:to_i)

divs =  common_divisors(m).reverse

divs.each do |d|
  if d * n <= m
    puts d
    exit
  end
end
