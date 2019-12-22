n = gets.to_i

def count_z(num)
  tmp = num.to_s.chars.reverse
  cnt = 0
  tmp.each do |x|
    if x != '0'
      break
    else
      cnt += 1
    end
  end
  cnt
end

def fac(n)
  return 1 if n < 2
  n * fac(n-2)
end

# puts fac(n)

# puts fac(50) # 6
# puts fac(52) # 6
# puts fac(54) # 6
# puts fac(56) # 6
# puts fac(58)
#
# puts fac(60) # 7
# puts fac(62) # 7
# puts fac(64) # 7
# puts fac(66) # 7
# puts fac(68) # 7

# puts fac(70) # 8
# puts fac(72) # 8
# puts fac(74) # 8
# puts fac(76) # 8
# puts fac(78) # 8

# puts fac(80) # 9
# puts fac(82) # 9
# puts fac(84) # 9
# puts fac(86) # 9
# puts fac(88) # 9

# puts fac(90) #10
# puts fac(98) #10

# puts fac(100) # 12
# puts fac(102) # 12
# puts fac(104) # 12
# puts fac(106) # 12
# puts fac(108) # 12

# puts count_z(fac(10)) # 1
# puts count_z(fac(20)) # 2
# puts count_z(fac(30)) # 3
# puts count_z(fac(40)) # 4
#
# puts count_z(fac(50)) # 6
# puts count_z(fac(60)) # 7
# puts count_z(fac(70)) # 8
# puts count_z(fac(80)) # 9
# puts count_z(fac(90)) # 10
#
# puts count_z(fac(100)) # 12

# puts count_z(fac(200)) # 24
# puts count_z(fac(210)) # 25
# puts count_z(fac(220)) # 26
# puts count_z(fac(230)) # 27
# puts count_z(fac(240)) # 28
#
# puts count_z(fac(250)) # 31
# puts count_z(fac(260)) # 32
# puts count_z(fac(270)) # 33
# puts count_z(fac(280)) # 34
# puts count_z(fac(290)) # 35
#
# puts count_z(fac(300)) # 37
# puts count_z(fac(310)) # 38
# puts count_z(fac(320)) # 39
# puts count_z(fac(330)) # 40
# puts count_z(fac(340)) # 41
#
# puts count_z(fac(350)) # 43

# puts count_z(fac(1000)) # 124


# if n.odd?
#   puts 0
# else
# end
