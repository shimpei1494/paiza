nm = gets.chomp.split(" ")
n = nm[0].to_i
m = nm[1].to_i



map = []
n.times do |ni|
  gyou = gets.chomp.split(" ")
  map << gyou
end

total_answer = ""

n.times do |ni|
  count = 0
  map.each do |gyou|
    if gyou[ni].to_i < m
      count += 1
    end
  end
  if count == n
    answer_route = (ni+1).to_s + " "
    total_answer += answer_route
  end
end

if total_answer == ""
  puts "wait"
else
  puts total_answer.chop
end