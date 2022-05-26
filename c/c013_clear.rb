
n = gets.chomp
m = gets.to_i

array =[]

m.times do
  s = gets.chomp
  unless s.include?(n)
    puts s
    array << s
  end
end

if array.empty?
  puts "none"
end