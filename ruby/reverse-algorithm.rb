def reverse_array(array)
  copy = array
  new_arr = Array.new
  while copy.length > 0
    new_arr << copy[copy.length-1]
    copy.delete(copy[copy.length-1])
  end
  return new_arr
end

p reverse_array(["apple", "cheese", "cow", "bread"])


def reverse_integer(integer)
  copy = integer
  digits = Array.new
  until copy == 0
    digits << copy % 10
    copy = copy / 10
  end
  return digits.join
end

p reverse_integer(155286)
