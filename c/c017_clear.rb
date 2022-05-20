s = gets.chomp.split(" ")
a = s[0].to_i
b = s[1].to_i

n = gets.to_i

n.times do 
  p1 = 0
  p2 = 0
  card = gets.chomp.split(" ")
  p1 = card[0].to_i
  p2 = card[1].to_i
  if a > p1
    puts "High"
  elsif a < p1
    puts "Low"
  else 
    if b < p2
      puts "High"
    elsif b > p2
      puts "Low"
    end
  end
end