hw = gets.chomp.split(" ").map(&:to_i)

h = hw[0]
w = hw[1]

map = []
around_line = []
(w + 2).times do 
  around_line << 0 # [0, 0, 0, 0] w=2の時
end

map << around_line

def kubetu(tango)
  if tango == "#"
    return 1
  else
    return 0
  end
end

h.times do 
  s = gets.chomp.chars.map{ |tango| kubetu(tango) }
  s.unshift(0)
  s.push(0)
  map << s
end

map << around_line

count = 0

h.times do |h_i|
  w.times do |w_i|
    # 場所：map[h_i + 1][w_i + 1] 
    if map[h_i + 1][w_i +1] == 1
      count += 4
      if map[h_i][w_i + 1] == 1
        count -= 1
      end
      if map[h_i + 1][w_i] == 1
        count -= 1
      end
      if map[h_i + 1][w_i + 2] == 1
        count -= 1
      end
      if map[h_i + 2][w_i + 1] == 1
        count -= 1
      end
    end
  end
end

puts count