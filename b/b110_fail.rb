hw = gets.chomp.split(" ").map(&:to_i)
h = hw[0]
w = hw[1]

#1枚目

map1 = []

h.times do
  gyou1 = []
  gyou = gets.chomp.split(" ").map(&:to_i)
  gyou.each do |item|
    gyou1 << item
    gyou1 << item
  end
  gyou1 << 0
  map1 << gyou1
end

gyou1 = []
(w * 2 + 1).times do
  gyou1 << 0
end
map1 << gyou1

#2枚目

map2 = []
gyou2 = []

(w * 2 + 1).times do
  gyou2 << 0
end
map2 << gyou2

h.times do
  gyou2 = []
  gyou2 << 0
  gyou = gets.chomp.split(" ").map(&:to_i)
  gyou.each do |item|
    gyou2 << item
    gyou2 << item
  end
  map2 << gyou2
end

answer_map = []

(2 * h - 1).times do |h_i|
  h_i += 1
  answer_gyou = []
  (2 * w - 1).times do |w_i|
    w_i += 1
    item = 0
    item = (map1[h_i][w_i] + map2[h_i][w_i]) / 2
    answer_gyou << item
  end
  answer_map << answer_gyou
end

answer_map.each do |one_gyou|
  puts one_gyou.join(" ")
end