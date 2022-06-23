hwn = gets.chomp.split(" ").map(&:to_i)
h = hwn[0]
w = hwn[1]
n = hwn[2]

seki_kuji = []

n.times do
  input = gets.to_i
  seki_kuji << input
end

i = 1
seki_map = []

h.times do 
  gyou = []
  w.times do
    num = 0
    seki_kuji.each_with_index do |item, index|
      if item == i
        num = index + 1
      end
    end
    gyou << num
    i += 1
  end
  seki_map << gyou
end

#おそらくここの処理が多くて境界値タイムオーバーになった
#結果としては処理に時間がかかるが出せそう
n.times do
  h.times do |h_i|
    w.times do |w_i|
      if h_i >= 1
        if seki_map[h_i][w_i] != 0
          if seki_map[h_i - 1][w_i] == 0
            seki_map[h_i -1][w_i] = seki_map[h_i][w_i]
            seki_map[h_i][w_i] = 0
          end
        end
      end
    end
  end
end

seki_map.each do |answer|
  puts answer.join(" ")
end

