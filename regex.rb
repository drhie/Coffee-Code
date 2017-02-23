#1. ALL FILES ENDING WITH A .PNG
def regex1(file_list)
  new_file_list = []
  file_list.each { |file| new_file_list << file if /\.png$/.match(file) }
  new_file_list
end

p regex1(['asdlfkjpng', 'owieth.png', 'rebecca'])

#2. ALL ANIMALS WITH EXACTLY 3 LETTERS.
def regex2(animals)
  new_animals = []
  animals.each { |animal| new_animals << animal if /^\w{3}$/.match(animal)}
  new_animals
end

p regex2(['cow', 'chicken', 'tiger', 'cat'])

#3. ALL NAMES THAT DO NOT START WITH A B.
def regex3(names)
  names.each { |name| names.delete(name) if /^[B]/.match(name) }
end

p regex3(['Becky', 'Michael', 'Devon', 'Bob', 'Abigail', 'Arby'])

#4. ALL NAMES THAT DON'T CONTAIN ANY B'S.
def regex4(names)
  #This will cause skips because the index keeps getting reset after each delete!
  # names.each { |name| names.delete(name) if /[bB]/.match(name)}

  new_names = []
  names.each { |name| new_names << name unless /[Bb]/.match(name) }
  new_names
end

p regex4(['Becky', 'Michael', 'Devon', 'Bob', 'Abigail', 'Arby', 'Luba', 'Fibonacci'])
