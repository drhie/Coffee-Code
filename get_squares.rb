def get_squares(array)
  answer_array = []
  array.each { |number|
    answer_array << number if Math.sqrt(number) % 1 == 0 && !answer_array.include?(number)
  }
  answer_array.sort!
end
