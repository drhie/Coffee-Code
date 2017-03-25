def luck_check(str)
  return false unless str =~ /\A\d+\z/
  array = str.chars.map { |x|
    x.to_i
  }
  front = []
  back = []
  array.each_with_index { |x, index|
    front << x if index < array.length/2
    back << x if index >= array.length/2.0
  }
  return front.inject(:+) == back.inject(:+)
end

# str =~ /\A\d+\z/
# REGULAR EXPRESSION: str =~ //
# \d == decimal number
# \A == start of tring
# \Z == end of string
# \A\d+\Z must start as a continuous string of numbers and it must end.
# \A[a-zA-Z]\d[a-zA-Z]\s\d[a-zA-Z]\d\z => regular expression for a postal code match
