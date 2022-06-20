n = gets.to_i

total_stock = []

n.times do
  stock = gets.chomp.split(" ").map(&:to_i)
  total_stock << stock
end

start = total_stock[0][0].to_s
finish = total_stock[n - 1][1].to_s

high_stock = []
low_stock = []

total_stock.each do |item|
  high_stock << item[2]
  low_stock << item[3]
end

high = high_stock.sort[n - 1].to_s
low = low_stock.sort[0].to_s

puts start + " " + finish + " " + high + " " + low