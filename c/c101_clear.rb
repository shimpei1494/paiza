x = gets.chomp

i = 0
count = 0

while i <= 365
  if i.to_s.include?(x)
    count += 1
  end
  i += 1
end

puts count