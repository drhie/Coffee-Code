def copy_sort(array):
    copy = array[:]
    sorted_copy = []
    while len(copy) > 0:
        minimum = 0
        for i in range(0, len(copy)):
            if copy[i] < copy[minimum]:
                minimum = i
        sorted_copy.append(copy.pop(minimum))
    return sorted_copy

print copy_sort([12, 1, 2, 6, 7, 4])
