n,k = gets.split.map(&:to_i)
_ = gets.split.map(&:to_i)

puts (n - 1) % (k - 1) == 0 ? (n - 1) / (k - 1) : (n - 1) / (k - 1) + 1
