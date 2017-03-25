import random

#arrays
fav_colours = ['purple', 'blue', 'orange']

ages = ['30', '33']

coin = ['heads', 'tails']
attempt = 0
results = []
while attempt <= 5:
    result = random.choice(coin)
    results.append(result)
    attempt += 1

print results

artists = ['John Lennon', 'Bob Marley', 'Arethra Franklin']

#dictionary
dictionary = {
    'dave': 'A really cool guy',
    'swimming': 'An activity in water',
    'coding': 'A mysterious magical power'
}

movies = {
    'zatoichi': 2007,
    'aladdin': 1994,
    'silence of the lambs': 1991
}

cities = {
    'Canada': 30000000,
    'Japan': 100000000,
    'USA': 300000000
}

cousins = {
    'Jaehee': 14,
    'Jaeho': 17,
    'Grace': 29,
    'Tina': 33,
    'Linda': 36,
    'Anna': 41,
}

#EXERCISE 1: Print out first, last, first 2 and last 2 elements
arrays = fav_colours, ages, results, artists
for printout in arrays:
    print "First element of this array: {0}".format(printout[0])
    print "Last element of this array: {0}".format(printout[-1])
    print "First two elements of this array: {0}, {1}".format(printout[0], printout[1])
    print "Last two elements of this array: {0}, {1}".format(printout[-1], printout[-2])

hashes = dictionary, movies, cities, cousins
for printout in hashes:
    print "A stored value for dictionary: {0}".format(printout.values()[0])

#EXERCISE 2: Sorting and reversing
for array in arrays:
    array.reverse()
    print "The array has been reversed: {0}".format(array)
    array.sort()
    print "The array has been sorted: {0}".format(array)
    array.sort()
    array.reverse()
    print "The array has been sorted then reversed: {0}".format(array)

#EXERCISE 3
for array in arrays:
    if array == arrays[0]:
        for x in array:
            print "My favourite colour is {0}".format(x)
    elif array == arrays[1]:
        for x in array:
            print "One person in my family is {0}-years old".format(x)
    elif array == arrays[2]:
        i = 1
        for x in array:
            print "We flipped {0} on try #{1}".format(x, i)
            i += 1
    elif array == arrays[3]:
        for x in array:
            print "The artist I like is {0}".format(x)

for hash_element in hashes:
    for i in hash_element:
        print "The key '{0}' has a value of '{1}'".format(i, hash_element[i])

#EXERCISE 4
for array in arrays:
    array.append("New element!!!")

for hash_element in hashes:
    hash_element['New key!'] = 'New value!'

#EXERCISE 5
movies_per_year = {
    1999: ['The Matrix', 'Star Wars: Episode 1', 'The Mummy'],
    2009: ['Avatar', 'Star Trek', 'District 9'],
    2019: ['How to Train Your Dragon 3', 'Toy Story 4', 'Star Wars: Episode 9']
}

phone_rows = ['1', '2', '3'], ['4', '5', '6'], ['7', '8', '9'], ['*', '0', '#']

countries = [
    {
        'name': 'Canada',
        'continent': 'North America',
        'island': False
    },
    {
        'name': 'Japan',
        'continent': 'Asia',
        'island': True
    },
    {
        'name': 'England',
        'continent': 'Europe',
        'island': True
    }
]

#EXERCISE 6
bart_simpson = []
for n in range(20):
     bart_simpson.append("I will not skateboard in the halls.")
print bart_simpson

number_array = []
for n in range(50):
    number_array.append(n+1)
print number_array

total = 0
for n in number_array:
    total += n
print total

new_number_array = []
for n in number_array:
    for x in range(3):
        new_number_array.append(n)
print new_number_array
