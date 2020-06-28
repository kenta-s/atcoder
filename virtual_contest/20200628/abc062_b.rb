h,w = gets.split.map(&:to_i)
ss = ['#' * w + '##']
h.times do
  s = gets.chomp
  ss << "##{s}#"
end
ss << ['#' * w + '##']

ss.each do |s|
  puts s
end
