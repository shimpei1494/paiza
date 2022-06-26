nmtk = gets.chomp.split(" ").map(&:to_i)

n = nmtk[0] #発言件数
m = nmtk[1] #~時間監視
#t時間内で合計k件以上のgoodがあればバズる判定
t = nmtk[2] 
k = nmtk[3]

total_schdule = []

m.times do
  gyou = gets.chomp.split(" ").map(&:to_i)
  total_schdule << gyou
end

def hantei(kensu, k) #kensuはt時間での合計件数
  if kensu >= k
    true
  else  
    false
  end
end

pattern_count = m - t + 1 #このパターンの数だけバズ判定する


n.times do |n_i|

  x = 0
  kensu = 0
  answer_count = 0
  while x <= t - 1 do
    kensu += total_schdule[x][n_i]
    x += 1
  end
  if hantei(kensu, k)
    puts "yes #{t}"
    answer_count += 1
  end

  if answer_count == 0
    m_i = 1 #1から始まりpattern_count分だけ計算し、pattern_count - 1で終わる
    while m_i <= pattern_count - 1 do
      kensu += total_schdule[m_i + t - 1][n_i]
      kensu -= total_schdule[m_i - 1][n_i]
      if hantei(kensu, k)
        puts "yes #{m_i + t}"
        answer_count += 1
        break
      end
      m_i += 1
    end
  end

  if answer_count == 0
    puts "no 0"
  end
end

#t時間ごとに区切って判定していたが、t=4の時に初め2時間で超えたら2を出力しなければならないことを知らなかったため失敗になっていると思われる