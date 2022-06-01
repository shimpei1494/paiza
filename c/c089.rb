hw = gets.chomp.split(" ")
h = hw[0].to_i
w = hw[1].to_i

strak_out = [] # [行[中に列],[中に列]]

h.times do
  gyou = []
  gyou = gets.chomp.chars
  strak_out << gyou
end

score_field = []

h.times do
  gyou = []
  gyou = gets.chomp.split(" ").map(&:to_i)
  score_field << gyou
end

score = 0

strak_out.each_with_index do |one_gyou, h_num|
  one_gyou.each_with_index do |one_retu, w_num|
    if one_retu == "o"
      score += score_field[h_num][w_num]
    end
  end
end

puts score