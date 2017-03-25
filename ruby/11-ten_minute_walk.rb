def generator(walk)
  return false if walk.length != 10
  n=0; s=0; w=0; e=0
  walk.each do |letter|
    n += 1 if letter == "n"
    s += 1 if letter == "s"
    w += 1 if letter == "w"
    e += 1 if letter == "e"
  end
  n == s && w == e ? true : false
end


p generator(['n', 's', 'w', 'e', 'n', 's', 'w', 'e', 's', 'n'])
p generator(['n', 's', 'w', 'e'])
p generator(['n', 'n', 'n', 'n', 's', 's', 's', 'w', 'e', 'w'])
