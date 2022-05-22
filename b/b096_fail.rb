hw = gets.chomp.split(" ")
h = hw[0].to_i
w = hw[1].to_i

map = []
gyou_explosion = []
retu_explosion = []

h.times do
  gyou = []
  input_array = gets.chars
  # ex) input_array = [".,".","#"]
  input_array.each do |input|
    if input == "."
      num = 0
    end
    if input == "#"
      num = 1
      gyou_count = map.length #爆弾のある行を0からカウントで出す
      gyou_explosion << gyou_count 
      retu = gyou.length #爆弾のある列を0からカウントで出す
      retu_explosion << retu
    end
    if num == 0 || num == 1
      gyou << num
    end
  end
  map << gyou
end

# retu_explosion = retu_explosion.uniq
# gyou_explosion = gyou_explosion.uniq



gyou_explosion.each do |exp|
  map[exp].each do |i|
    i = 1
  end
end

retu_explosion.each do |exp|
  map.each do |one_gyou|
    one_gyou[exp] = 1
  end
end

count = 0

map.each do |one_gyou|
  one_gyou.each do |num|
    if num = 1
      count += 1
    end
  end
end

puts count