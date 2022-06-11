nm = gets.chomp.split(" ")
n = nm[0].to_i
m = nm[1].to_i

n.times do |i|
  ab = gets.chomp.split(" ").map(&:to_i)
  a = ab[0]
  b = ab[1]
  score = a - (b * 5)
  if score < 0
    score = 0
  end
  if score >= m
    puts i + 1
  end
end