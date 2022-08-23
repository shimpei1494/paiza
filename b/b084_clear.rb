nmk = gets.chomp.split(" ").map(&:to_i)
n = nmk[0]
m = nmk[1]
k = nmk[2]

my_eva = gets.chomp.split.map(&:to_i)
my_eva_3up = []

my_eva.each_with_index do |item, i|
  if item == 3
    my_eva_3up << i
  end
end

def up_count(my_eva_3up, one_user, k)
  count3 = 0
  my_eva_3up.each do |item|
    if one_user[item] == 3
      count3 += 1
    end
  end
  if count3 >= k
    true
  else
    false
  end
end

itenai_list = []

def itenai(my_eva, one_user, itenai_list)
  one_user.each_with_index do |item, i|
    if item == 3 && my_eva[i] == 0
      itenai_list << i
    end
  end
end

m.times do
  one_user = gets.chomp.split(" ").map(&:to_i)
  if up_count(my_eva_3up, one_user, k)
    itenai(my_eva, one_user, itenai_list)
  end
end

if itenai_list != []
  itenai_list.uniq!
  itenai_list.sort!
  itenai_list2 = []
  itenai_list.each do |item|
    itenai_list2 << item + 1
  end
  puts itenai_list2.join(' ')
else
  puts "no"
end