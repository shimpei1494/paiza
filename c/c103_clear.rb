nm = gets.chomp.split(" ").map(&:to_i)

n = nm[0]
m = nm[1]

all_dousa = []

m.times do
  dousa = gets.chomp.split(" ")
  array = []
  array << dousa[0].to_i
  array << dousa[1] + " "
  all_dousa << array
end

n.times do |i|
  answer_word = ""
  all_dousa.each do |array|
    if (i + 1) % array[0] == 0
      answer_word += array[1]
    end
  end
  if answer_word == ""
    puts (i + 1)
  else 
    puts answer_word.rstrip!
  end
end