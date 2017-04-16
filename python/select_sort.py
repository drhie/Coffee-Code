def select_sort(array):
    for i in range(0, len(array)-1):
        value = array[i]
        current_i = i
        for next_i in range(i+1, len(array)):
            if array[next_i] < array[current_i]:
                current_i = next_i
        array[i] = array[current_i]
        array[current_i] = value
    return array

print select_sort([12, 1, 2, 6, 7, 4])
