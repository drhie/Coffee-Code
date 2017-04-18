def insert_sort(array):
    for index in range(1, len(array)):
        value = array[index]
        while array[index-1] > value and index >= 1:
            array[index] = array[index-1]
            index -= 1
            array[index] = value
    return array

print insert_sort([12, 1, 2, 6, 7, 4])
