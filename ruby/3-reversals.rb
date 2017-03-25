puts 'first'.reverse
puts [1, 2, 3, 4].reverse

array = []
a = []
words = ['first', 'second', 'third', 'fourth', 'fifth']
words.reverse!

array = words.map { |word| word.reverse } # Creating a new array, but it must be captured!

words.each { |word| word.reverse! } # Does not create a new array

p array
p a
