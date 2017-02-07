animals = [['dogs', 4], ['cats', 3], ['dogs', 7]]

def to_hash_dave(animals)
  animal_hash = Hash.new
  animals.each { |x|
    if animal_hash.has_key?(x[0])
      animal_hash[x[0]] += x[1]
    else
      animal_hash[x[0]] = x[1]
    end
  }
  animal_hash
end


def to_hash_bence(animals)
  h = {}
  animals.each do |animal|
    name = animal[0]
    number = animal[1]
    if h[name]
      h[name] = h[name] + number
    else
      h[name] = number
    end
  end
  h
end


p to_hash_dave(animals)
p to_hash_bence(animals)
