sx, sy, tx, ty = gets.split.map(&:to_i)

ans = ""
ans << "U" * (ty-sy)
ans << "R" * (tx-sx)
ans << "D" * (ty-sy)
ans << "L" * (tx-sx)

ans << "L"
ans << "U" * ((ty-sy)+1)
ans << "R" * ((tx-sx)+1)
ans << "D"
ans << "R"
ans << "D" * ((ty-sy)+1)
ans << "L" * ((tx-sx)+1)
ans << "U"

puts ans
