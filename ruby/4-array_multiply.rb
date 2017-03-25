# PROBLEM 1
movies = [['Alfonso Cuaron', 'Gravity'], ['Spike Jonze', 'Her'], ['Martin Scorcese', 'The Wolf of Wall Street']]

# One way to do it
movie_hash = {}
movies.each { |director, movie|
  movie_hash[director] = movie
}

# Another way to do it
movie_hash = movies.to_h

# PROBLEM 2
# One way to do it
[1, 12, 144, 1728, 20736, 248832, 2985984, 35831808].inject(:*)

# Another way to do it
total = 1
[1, 12, 144, 1728, 20736, 248832, 2985984, 35831808].map { |number|
  total *= number
}
