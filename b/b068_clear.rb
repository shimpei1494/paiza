hw = gets.chomp.split(" ")
h = hw[0].to_i
w = hw[1].to_i

toudo_map = []

h.times do 
  gyou = gets.chomp.split(" ").map(&:to_i)
  toudo_map << gyou
end

def answer(toudo_map)
  total_answer = []
  toudo_map.each do |one_gyou|
    sum = 0
    sum = one_gyou.sum
    if sum % 2 != 0
      return puts "No"
    end
    harf_sum = sum / 2
    tasizan = 0
    gyou_answer = ""
    which_human ="A"
    one_gyou.each do |num|
      tasizan += num
      gyou_answer += which_human
      if tasizan == harf_sum
        which_human = "B"
      end
    end
    if gyou_answer.include?("B")
      total_answer << gyou_answer
    else
      return puts "No"
    end
  end
  puts "Yes"
  total_answer.each do |gyou_answer|
    puts gyou_answer
  end
end

answer(toudo_map)