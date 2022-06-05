n = gets.to_i

hyoukou_map = []
gyou0 = []

(n + 2).times do
  gyou0 << 0
end

hyoukou_map << gyou0

n.times do
  one_gyou = gets.chomp.split(" ").map(&:to_i)
  one_gyou.unshift(0)
  one_gyou.push(0)
  hyoukou_map << one_gyou
end

hyoukou_map << gyou0

answer_array = []

n.times do |i|
  gyou_num = i + 1

  n.times do |t|
    retu_num = t + 1
    the_num = hyoukou_map[gyou_num][retu_num]
    if the_num > hyoukou_map[gyou_num - 1][retu_num] && the_num > hyoukou_map[gyou_num][retu_num - 1] && the_num > hyoukou_map[gyou_num][retu_num + 1] && the_num > hyoukou_map[gyou_num + 1][retu_num]
      answer_array << the_num
    end
  end
end

answer_array = answer_array.sort.reverse
answer_array.each do |item|
  puts item
end