condition = gets.chomp.split(" ").map(&:to_i)
condition_atk = condition[0]
condition_def = condition[1]
condition_agi = condition[2]

n = gets.to_i

count = 0

n.times do
  parameter = gets.chomp.split(" ")
  if condition_atk >= parameter[1].to_i && condition_atk <= parameter[2].to_i && condition_def >= parameter[3].to_i && condition_def <= parameter[4].to_i && condition_agi >= parameter[5].to_i && condition_agi <= parameter[6].to_i
    puts parameter[0]
    count += 1
  end
end

if count == 0
  puts "no evolution"
end