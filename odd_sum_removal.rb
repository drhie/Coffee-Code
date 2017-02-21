def remove_odd_hashes(array, symbol1, symbol2)
  array.each do |hash|
    total = 0
    hash.each { |key, value| total += value }
    array.delete(hash) if total % 2 != 0
  end
  return array
end

p remove_odd_hashes(
[{a: 5, b: 5},
  {a: 3, b: 4},
  {a: 2, b: 0},
  {a: 2, b: 1}],
  :a, :b)
