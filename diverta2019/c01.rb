n = gets.to_i
ans = 0
tmp1 = [] # A starts
tmp2 = [] # B ends
tmp3 = [] # A starts and B ends
n.times do
  s = gets.chomp
  s.chars.each.with_index do |c,i|
    break if s[i+1].nil?
    if c == "A" && s[i+1] == "B"
      ans += 1
    end
  end

  if s[-1] == "A" && s[0] == "B"
    tmp3 << s
  elsif s[-1] == "A"
    tmp1 << s
  elsif s[0] == "B"
    tmp2 << s
  end
end

acnt = tmp1.size
bcnt = tmp2.size
min = [acnt, bcnt].min
acnt -= min
bcnt -= min
ans += min

ccnt = tmp3.size

# if ccnt >= 2
#   ans += ccnt - 1
#   ccnt = 1
# end

if acnt > bcnt
  cnt = acnt
elsif bcnt > acnt
  cnt = bcnt
elsif acnt.zero? && bcnt.zero?
  cnt = 0
end

if cnt.zero?
  ans += ccnt - 1 if ccnt > 0
else
  if ccnt >= cnt
    ans += cnt
    ccnt -= cnt
    ans += ccnt - 1 if ccnt > 0
  else
    ans += cnt
    ccnt -= cnt
    ans += ccnt - 1 if ccnt > 0
  end
end

puts ans
