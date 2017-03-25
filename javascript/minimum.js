function min(array) {
  var minimum = array[0];
  array.forEach(function(num) {
    minimum < num ? minimum = minimum : minimum = num;
  });
  return minimum;
}

console.log(min([24, 90, 28, 34, 2, 64, 18, 3]))
