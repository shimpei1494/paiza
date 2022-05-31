nc12 = gets.chomp.split(" ")
n = nc12[0].to_i
c_1 = nc12[1].to_i
c_2 = nc12[2].to_i

stock = 0
pay = 0
income = 0

(n - 1).times do
  day_rate = gets.to_i
  if day_rate <= c_1
    stock += 1
    pay += day_rate
  elsif day_rate >= c_2
    income += stock * day_rate
    stock = 0
  end
end

last_rate = gets.to_i
income += last_rate * stock

puts (income - pay)