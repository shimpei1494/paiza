abcd = gets.chomp.split(" ").map(&:to_i)

abcd = abcd.sort

puts (abcd[3] * 10 + abcd[0] + abcd[2]* 10 + abcd[1])