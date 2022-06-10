n = gets.to_i

ryotei = []

n.times do 
  sft = gets.chomp.split(" ").map(&:to_i)
  s = sft[0]
  f = sft[1]
  t = sft[2]
  hour = s + f + (24 - t)
  ryotei << hour
end

ryotei_to_high = ryotei.sort

puts ryotei_to_high[0]
puts ryotei_to_high[n - 1]