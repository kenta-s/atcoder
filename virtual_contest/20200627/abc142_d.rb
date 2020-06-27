require 'prime'
a,b = gets.split.map(&:to_i)

a_primes = a.prime_division
b_primes = b.prime_division

a_primes = a_primes.map{|a| a[0]}
b_primes = b_primes.map{|b| b[0]}

primes = a_primes & b_primes

puts primes.size + 1
# require 'irb'
# binding.irb
# 
# aa = 1
