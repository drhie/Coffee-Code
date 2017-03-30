function some(array, test) {
  var returnValue = false;
  array.forEach(function(e) {
    if (test(e)) {
      returnValue = true;
    }
  });
  return returnValue;
}

console.log(some([1, 4, 7, 2], function(e) {return e > 5})) // true
console.log(every([1, 5, 7, 6], function(e) {return typeof e === "number"})) // true

function every(array, test) {
  var counter = 0;
  array.forEach(function(e) {
    if (test(e)) {
      counter++;
    }
  });
  if (counter == array.length) {
    return true
  } else {
    return false
  }
}
