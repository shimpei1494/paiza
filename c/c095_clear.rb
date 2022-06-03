s = gets.chomp
s_one = s.chars
t = gets.chomp
# t_one = t.chars

match_hash = {}

s_one.each do |answer_spell|
  count = 0
  count = s.count(answer_spell)
  match_hash[answer_spell] = count
end

def handan(s_one, t, match_hash, s)
  if s == t
    return puts "NO"
  end
  s_one.each do |answer_spell|
    kaitou = 0
    kaitou = t.count(answer_spell)
    if kaitou != match_hash[answer_spell]
      return puts "NO"
    end
  end
  puts "YES"
end

handan(s_one, t, match_hash, s)