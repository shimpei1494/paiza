s = gets.chomp.split(" ")
m = s[0].to_f
p = s[1].to_f
q = s[2].to_f

zan = m * (100 - p) / 100 * (100 - q) / 100
puts zan