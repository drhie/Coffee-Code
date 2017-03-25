def create_phone_number(number_array)
  "(#{number_array[0..2].join("")}) #{number_array[3..5].join("")}-#{number_array[6..9].join("")}"
end

def valid_phone_number(phone_number)
  if phone_number[0] == "(" && phone_number[4] == ")" && phone_number[5] == " " && phone_number[9] == "-"
    true
  else
    false
  end
end
