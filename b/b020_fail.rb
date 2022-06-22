n = gets.to_i
rekisi = []

def handan(input,rekisi,minus_count,num)
  if input == "use the back button"
    minus_count += 2
    num2 = num - minus_count + 1
    leng = rekisi.length
    rekisi = rekisi.slice!(num2..leng)
    puts rekisi[num - minus_count]
  elsif input.include?("go to")
    new = input.gsub(/go to /, "")
    rekisi << new
    puts new
  end
end

minus_count = 0

n.times do |num|
  input = gets.chomp
  handan(input, rekisi, minus_count, num)
end

#なぜか最後の出力が出ない