e = gets.chomp.split("+")

def count(string)
  ten = string.scan("<").length
  one = string.scan("/").length
  return ten * 10 + one
end

sum = 0
e.each do |num|
  sum += count(num)
end

puts sum