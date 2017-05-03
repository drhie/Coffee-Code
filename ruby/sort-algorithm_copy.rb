def sort(array)
  copy = array
  new_arr = Array.new
  until copy.length == 0
    low = 0
    for i in 0...copy.length
      if copy[i] < copy[low]
        low = i
      end
    end
    new_arr << copy.delete(copy[low])
  end
  return new_arr
end

p sort([1, 5, 4, 7, 0])
