function range(start, end, step) {
  var step = step || 1;
  var rangeArray = []
  if (step > 0) {
    for (var i = start; i <= end; i += step) {
      rangeArray.push(i);
    }
  } else if (step < 0) {
    for (var i = start; i >= end; i += step) {
      rangeArray.push(i);
    }
  }
  return rangeArray;
}

console.log(range(1, 10, 2));
console.log(range(5, 2, -1));

function sum(array) {
  var total = 0;
  array.forEach(function(e) {
    total += e;
  });
  return total;
}
