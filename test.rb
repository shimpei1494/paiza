
def main(lines)
  input = lines.split(" ")
  r = input[0]
  station = input[1].slice(2).to_i
  dir = input[2]
  hh = input[3].to_i 

  start_b1 = b1_train

  puts b_up_calc(start_b1, hh, station)
end

def b1_train
  start_b1 =[0, 0, 0, 0, 0, 0] #0時から5時までは発車する列車なし
  one_hour_start = []
  hours = 6
  minutes = 0
  while hours <= 23
    one_hour_start << minutes
    minutes += 6
    if minutes >= 60
      minutes -= 60
      start_b1 << one_hour_start
      one_hour_start = []
      hours += 1
    end
  end
  return start_b1
end

def b_up_calc(start_b1, hh, station)
  b_line_up = [4, 3, 3, 2, 3]
  plus = 0 #B1のとき
  if station != 1 #B1以外
    num = 0
    while num <= station - 2
      plus += b_line_up[num]
      num += 1
    end
  end
  answer = []
  # 始発駅1時間前
  start_b1[hh - 1].each do |minute|
    minute += plus
    if minute >= 60
      minute -= 60
      answer << minute
    end
  end
  #始発駅の当該時間
  start_b1[hh].each do |minute|
    minute += plus
    if minute < 60
      answer << minute
    end
  end
  return answer
end


# b_line_up = [4, 3, 3, 2, 3]
# b_line_down = [3, 2, 3 ,3, 4]

# main(readlines) 
main(gets.chomp)

