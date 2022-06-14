n = gets.to_i

tanka = gets.chomp.split(" ").map(&:to_i)
tq = gets.chomp.split(" ").map(&:to_i)
first_money = tq[0]
order_sum = tq[1]

order_sum.times do
  xk = gets.chomp.split(" ").map(&:to_i)
  x = xk[0] - 1
  k = xk[1]
  if first_money >= tanka[x] * k
    first_money -= tanka[x] * k
  end
end

puts first_money