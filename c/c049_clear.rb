n = gets.to_i

sum = 0
place = 1

n.times do
  change_place = gets.to_i
  sum += (place - change_place).abs
  place = change_place
end

puts sum