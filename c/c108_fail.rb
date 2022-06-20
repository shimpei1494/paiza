n = gets.to_i

taizai = []
taizai << 0

n.times do
  taizai << gets.to_i
end

idou = []
idou << 0

n.times do
  gyou = gets.chomp.split(" ").map(&:to_i)
  gyou.unshift(0)
  idou << gyou
end

k = gets.to_i

ikitai = []

k.times do
  ikitai << gets.to_i
end

answer = 0
answer += taizai[ikitai[0]]

i = 1
while i <= k do
  x = ikitai[i]
  y = ikitai[i - 1]
  answer += idou[x][y]
  answer += taizai[x]
  i += 1
end

puts answer