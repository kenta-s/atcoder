s = gets.chomp

if s.length > 9
  puts 'NO'
  exit
end

str = 'AKIHABARA'
(0..('1'*4).to_i(2)).each do |i|
  bits = i.to_s(2).rjust(4, '0').chars
  tmp = str.dup

  bits.each.with_index do |bit, j|
    if bit == '1'
      case j
      when 0
        tmp[0] = 'x'
      when 1
        tmp[4] = 'x'
      when 2
        tmp[6] = 'x'
      when 3
        tmp[8] = 'x'
      else
        raise '?'
      end
    end
  end

  tmp.gsub!('x', '')
  if tmp == s
    puts 'YES'
    exit
  end
end

puts 'NO'
