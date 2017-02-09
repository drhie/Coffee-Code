song = [["row", 3], ["your", 1], ["boat", 1]]

def row(song)
  answer = []
  song.each { |t| t[1].times { answer << t[0] } }
  answer
end

#FRED'S SOLUTION:
def new_song(song)
  new_song = song.map { |word, num| [word] * num }.flatten
end

p row(song)
