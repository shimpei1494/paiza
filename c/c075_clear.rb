nm = gets.chomp.split(" ")
n = nm[0].to_i
m = nm[1].to_i

point = 0

m.times do
  pay = 0
  pay = gets.to_i
  if point >= pay
    point -= pay
  else
    n -= pay
    point += pay / 10
  end
  puts "#{n} #{point}"
end