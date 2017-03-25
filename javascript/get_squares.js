function get_squares(array) {
  var answer_array = []
  array.forEach(function(number) {
    if (Math.sqrt(number) % 1 == 0 && !(number in answer_array))  {
      answer_array.push(number);
    }
  });
  return answer_array.sort();
}

function range(start, end) {
  var array = []
  for (var i = start; i < end; i++) {
    array.push(i);
  }
  return array.sort();
}

console.log(get_squares(range(1, 100)))
