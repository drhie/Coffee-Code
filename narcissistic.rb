def narc(number)
  power = number.to_s.length
  array = number.to_s.chars
  answer = 0
  array.each do |number|
    answer += number.to_i**power
  end
  return answer == number
end

p narc(153) #=> true
p narc(1634) #=> true
p narc(28) #=> false
