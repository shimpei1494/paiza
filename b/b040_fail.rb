nt = gets.chomp.split(" ")
n = nt[0].to_i
t = nt[1].chars

alphabet = ('a'..'z').to_a

rule = {}

t.each_with_index do |tango, i|
  rule[tango] = alphabet[i]
end

s = gets.chomp.chars

answer_array = []

s.each do |item|
  rule.each do |key, value|
    if item == " "
      answer_array << "1"
    elsif key == item
      answer_array << value
    end 
  end
end

answer = ""

answer_array.each do |item|
  if item == "1"
    answer += " "
  else  
    answer += item
  end
end

puts answer

#なぜかスペースが1つだけじゃなくてたくさん入ってしまう　