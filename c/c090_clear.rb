
sum = 0

s = gets.chomp.split("-")

def calculate(sum,numbers)
  each_length = [12, 3, 4, 5, 6, 7, 8, 9, 10, 11]
  number = numbers.chars
  number.each do |one|
    sum += each_length[one.to_i] * 2
  end
  return sum
end

sum = calculate(sum, s[0])
sum = calculate(sum, s[1])
sum= calculate(sum, s[2])
puts sum