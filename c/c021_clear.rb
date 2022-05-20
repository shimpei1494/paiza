s = gets.chomp.split(" ")
xc = s[0].to_i
yc = s[1].to_i
r_1 = s[2].to_i
r1_r1 = r_1 * r_1
r_2 = s[3].to_i
r2_r2 = r_2 * r_2

n = gets.to_i

n.times do
  x = 0
  y = 0
  input = gets.chomp.split(" ")
  x = input[0].to_i
  y = input[1].to_i
  xx_yy = (x - xc) * (x - xc) + (y - yc) * (y - yc)
  if xx_yy >= r1_r1 && xx_yy <= r2_r2
    puts "yes"
  else
    puts "no"
  end
end