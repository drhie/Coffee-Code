#From CodeWars: https://www.codewars.com/kata/reverse-or-rotate

def revrot(str, sz)
  str = str.chars
  chunk_array = []
  chunk = []
  final_string = []
  str.each do |s|
    cube_total = 0
    chunk << s.to_i
    if chunk.length == sz
      chunk_array << chunk
      chunk = []
    end
  end
  chunk_array.each do |chunk|
    cube_total = 0
    chunk.each { |digit| cube_total += (digit**3) }
    chunk = cube_total % 2 == 0 ? chunk.reverse : chunk.rotate(1)
    final_string << chunk
  end
  final_string.join("")
end
