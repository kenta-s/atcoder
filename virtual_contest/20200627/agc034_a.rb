n,a,b,c,d = gets.split.map(&:to_i)
s = gets.chomp.chars
s = ['no'] + s

visited = { 'a' => {}, 'b' => {}}

$n = n
$ans = "No"
def dfs(a, b, c, d, s, visited)
  if a == c && b == d
    $ans = "Yes"
    return
  end

  if a > $n
    return
  end

  if b > $n
    return
  end

  visited['a'][a] = true
  visited['b'][b] = true

  if a == c
  else
    if s[a + 1] != '#' && a + 1 != b
      if !visited['a'][a+1]
        dfs(a+1, b, c, d, s, visited)
      end
    end

    if s[a + 2] != '#' && a + 2 != b
      if !visited['a'][a+2]
        dfs(a+2, b, c, d, s, visited)
      end
    end
  end

  if b == d
  else
    if s[b + 1] != '#' && b + 1 != a
      if !visited['b'][b+1]
        dfs(a, b+1, c, d, s, visited)
      end
    end

    if s[b + 2] != '#' && b + 2 != a
      if !visited['b'][b+2]
        dfs(a, b+2, c, d, s, visited)
      end
    end
  end
end

dfs(a, b, c, d, s, visited)

puts $ans
