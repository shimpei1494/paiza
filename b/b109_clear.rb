nhwpq = gets.chomp.split(" ").map(&:to_i)

n = nhwpq[0]
h = nhwpq[1]
w = nhwpq[2]
p = nhwpq[3]
q = nhwpq[4]

map = []

h.times do
  gyou = []
  w.times do
    gyou << 0
  end
  map << gyou
end

n.times do
  pq = gets.chomp.split(" ").map(&:to_i)
  p_i = pq[0]
  q_i = pq[1]
  map[p_i][q_i] = 1
end

answer_count = 0
distance = 0

def manhatan(p, q, s, t)
  # distance
  (p - s).abs + (q - t).abs
end

while true do
  map.each_with_index do |gyou, p_index|
    gyou.each_with_index do |item, q_index|
      if manhatan(p, q, p_index, q_index) == distance && item == 0
        answer_count += 1
        puts p_index.to_s + " " + q_index.to_s
      end
    end
  end

  if answer_count >= 1
    break
  end
  distance += 1
end