def find_longest(array)
  compare = []
  array.each do |word|
    compare << word.size
  end
  index = compare.index(compare.max)
  array[index]
end

animals = %w(cow chicken sheep)
colours = %w(red blue green yellow chartreuse orange periwinkle tomato cobalt)

p find_longest(animals)
p find_longest(colours)

class Asdf
  def asdf
    array.each do 
      array.each do
        array.each do
        end
      end
    end
  end
end
