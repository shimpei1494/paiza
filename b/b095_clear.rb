
s = gets.chomp.split(" ")
n = s[0].to_i
m = s[1].to_i

count = 0
answer = []
while count <= m - 1
  answer[count] = gets.to_i
  count += 1
end

total_sing = []
singer_id = 0
while singer_id <= n - 1
  count_sing = 0
  sing_test = []
  full_score = 100
  while count_sing <= m - 1
    sing = gets.to_i
    score_line = (sing - answer[count_sing]).abs
    if score_line <= 5
      score = 0
    elsif score_line <= 10
      score = -1
    elsif score_line <= 20
      score = -2
    elsif score_line <= 30
      score = -3
    else  
      score = -5
    end
    if full_score < 0
      full_score = 0
    end
    full_score += score
    count_sing += 1
  end
  total_sing[singer_id] = full_score
  singer_id += 1
end

best_sing = 0
total_sing.each do |num|
  if num > best_sing
    best_sing = num
  end
end

puts best_sing