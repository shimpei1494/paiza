nd = gets.chomp.split(" ")
n = nd[0].to_i
d = nd[1].to_i

sum_overlap = 0

(n-1).times do
  sum_overlap += gets.to_i
end

sum_range = d * (d * n - sum_overlap)
puts sum_range