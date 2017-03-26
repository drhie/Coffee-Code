function min() {
  var minimum = arguments[0];
  for (i = 0; i < arguments.length; i++) {
    minimum < arguments[i] ? minimum = minimum : minimum = arguments[i];
  }
  return minimum;
}

console.log(min(24, 90, 28, 34, 2, 64, 18, 3))
