nm = gets.chomp.split(" ").map(&:to_i)
n = nm[0]
m = nm[1]

kensa = gets.chomp.split(" ").map(&:to_i)

kaisuu = n - m + 1

answer2 = 0

kaisuu.times do |num|
  i = 0
  answer = 0
  m.times do |m_num|
    i = num + m_num
    if kensa[i] == 0
      answer += 1
    end
  end
  if answer == m
    answer2 += 1
  end
end

if answer2 == 0
  puts "OK"
else  
  puts "NG"
end