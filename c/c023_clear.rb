tousen = gets.chomp.split(" ")
tousen_a = tousen[0].to_i
tousen_b = tousen[1].to_i
tousen_c = tousen[2].to_i
tousen_d = tousen[3].to_i
tousen_e = tousen[4].to_i
tousen_f = tousen[5].to_i

n = gets.to_i

def hit_count(tousen, one_num)
  if tousen == one_num
    return 1
  end
  return 0
end

n.times do
  buy_num =gets.chomp.split(" ").map(&:to_i)
  count = 0
  buy_num.each do |one_num|
    count += hit_count(tousen_a, one_num)
    count += hit_count(tousen_b, one_num)
    count += hit_count(tousen_c, one_num)
    count += hit_count(tousen_d, one_num)
    count += hit_count(tousen_e, one_num)
    count += hit_count(tousen_f, one_num)
  end
  puts count
end