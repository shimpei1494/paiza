st = gets.chomp.split(" ")
s = st[0].chars
t = st[1].chars

two_name1 = []
two_name2 = []
#sとtの文字列をバラバラにしてtwo_nameに単語ごとに格納
s.each do |s_name|
  two_name1 << s_name
end
t.each do |t_name|
  two_name1 << t_name
  two_name2 << t_name
end

s.each do |s_name|
  two_name2 << s_name
end

#a-zの配列作成
array_alpha = ("a".."z").to_a

alpha_num = {}
num = 1
#a-zに対して1-26が対応するハッシュを作成
array_alpha.each do |alpha|
  alpha_num[alpha] = num
  num += 1
end



#単語のアルファベットから数字配列に
def alpha_to_suuji(two_name, alpha_num)
  aisyou = []
  two_name.each do |tango|
    alpha_num.each do |key, value|
      if key == tango
        aisyou << value
      end
    end
  end
  return aisyou
end

aisyou1 = alpha_to_suuji(two_name1, alpha_num)
aisyou2 = alpha_to_suuji(two_name2, alpha_num)


def uranai(aisyou)
  while aisyou.length >= 2 do
    i = 0
    aisyou2 = []
    while i <= aisyou.length - 2 do
      suuji = aisyou[i] + aisyou[i + 1]
      if suuji > 101
        suuji -= 101
      end
      aisyou2 << suuji
      i += 1
    end
    aisyou = aisyou2
  end
  return aisyou
end

answer1 = uranai(aisyou1)
answer2 = uranai(aisyou2)

if answer1[0] >= answer2[0]
  puts answer1[0]
else
  puts answer2[0]
end
