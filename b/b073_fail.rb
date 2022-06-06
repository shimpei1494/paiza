nm = gets.chomp.split(" ")
n = nm[0].to_i
m = nm[1].to_i

first_light = gets.chomp.split(" ").map(&:to_i)

q = gets.to_i

q.times do
  patern = gets.chomp.split(" ").map(&:to_i)
  sum = 0
  i = patern[0]
  while i <= patern[1] do
    sum += first_light[i - 1]
    i += 1
  end
  average = sum.to_f / (patern[1] - patern[0] + 1)
  if average < m
    plus = (m - average + 1).floor
    i = patern[0]
    while i <= patern[1] do
      first_light[i - 1] += plus
      i += 1
    end
  end
end

first_light = first_light.map(&:to_s)
all_light = ""
index = 0
first_light.each do |light|
  index += 1
  all_light += light
  unless index == n
    all_light += " "
  end
end

puts all_light