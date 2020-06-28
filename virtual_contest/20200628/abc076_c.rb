s = gets.chomp
t = gets.chomp

candidates = []
s_chars = s.chars
t_chars = t.chars
(0..(s.length - t.length)).each do |i|
  ok = true
  t_chars.each.with_index do |t, j|
    if s[j+i] != '?' && s[j+i] != t_chars[j]
      ok = false
    end
  end

  if ok
    cand = s.dup
    cand = "#{cand[0...i]}#{t}#{cand[i + t.length..-1]}"
    cand.gsub!('?', 'a')
    candidates << cand
  end
end

if candidates.empty?
  puts "UNRESTORABLE"
else
  candidates.sort!
  puts candidates.first
end
