
s = gets.chomp.chars

def leet(tango)
  case tango
  when "A"
    return "4"
  when "E"
    return "3"
  when "G"
    return "6"
  when "I"
    return "1"
  when "O"
    return "0"
  when "S"
    return "5"
  when "Z"
    return "2"
  else
    return tango
  end
end

answer_array = []

s.each do |tango|
  answer_array << leet(tango)
end

answer = ""
answer_array.each do |tango|
  answer += tango
end

puts answer