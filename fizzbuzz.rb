# 1から100までの数に対して3で割り切れる数はFIZZ、5で割り切れる数はBUZZ、 
# 3でも5でも割り切れる数はFIZZBUZZと表示する。それ以外の数は数字のまま表示する。

100.times do |i|
  if (i + 1) % 15 == 0
    puts "FIZZBUZZ"
  elsif (i + 1) % 5 == 0
    puts "BUZZ"
  elsif (i + 1) % 3 == 0
    puts "FIZZ"
  else
    puts i + 1
  end
end
  