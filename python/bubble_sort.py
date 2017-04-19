def bubble_sort(array):
    for index in range(len(array)):
        for element in range((len(array)-1) - index):
            if array[element] > array[element+1]:
                array[element], array[element+1] = array[element+1], array[element]
    return array

print bubble_sort([12, 1, 2, 6, 7, 4])
