require 'prime'
n = gets.to_i

def factorial(n)
  return 1 if n == 0
  n * factorial(n-1)
end

num = factorial(n)
primes = num.prime_division.select{|a| a[1] >= 2}.map{|a| a[1]}

ans = 0

primes.size.times do |i|
  if primes[i] >= 74
    ans += 1
  else
    break
  end
end

primes.size.times do |i|
  if primes[i] >= 24 
    primes.size.times do |j|
      if i == j
        next
      end
      if primes[j] >= 2
        ans += 1
      end
    end
  else
    break
  end
end

primes.size.times do |i|
  if primes[i] >= 14 
    primes.size.times do |j|
      if i == j
        next
      end
      if primes[j] >= 4
        ans += 1
      end
    end
  else
    break
  end
end

primes.size.times do |i|
  if primes[i] >= 4
    primes.size.times do |j|
      if i >= j
        next
      end
      if primes[j] >= 4
        primes.size.times do |k|
          if i == k || j == k
            next
          end
          if primes[k] >= 2
            ans += 1
          end
        end
      end
    end
  else
    break
  end
end

puts ans
