n = gets.to_i

def factorial(n)
  return 1 if n == 0
  n * factorial(n-1)
end

require 'prime'

num = factorial(n)
ans = num.prime_division.reduce(1){|a,e| a*=(e[1]+1)}
puts ans % ((10**9)+7)
