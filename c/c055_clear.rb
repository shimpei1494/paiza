n = gets.to_i
g = gets.chomp

count = 0

n.times do
  str = gets.chomp
  if str.include?(g)
    puts str
    count += 1
  end
end

if count == 0
  puts "None"
end