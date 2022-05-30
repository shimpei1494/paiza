nr = gets.chomp.split(" ")
n = nr[0].to_i
r = nr[1].to_i

tyokei = r * 2

n.times do |i|
  hwd = gets.chomp.split(" ")
  h = hwd[0].to_i
  w = hwd[1].to_i
  d = hwd[2].to_i

  if h >= tyokei && w >= tyokei && d >= tyokei
    puts i + 1
  end
end
