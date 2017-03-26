function reverseArray(array) {
  var newArray = []
  for (var i = array.length-1; i >= 0; i--) {
    newArray.push(array[i]);
  }
  return newArray;
}

var numberList = [1, 2, 3, 4, 5, 6, 7];
console.log(reverseArray(numberList))

function reverseArrayInPlace(array) {
  for (var i = 0; i < array.length/2; i ++) {
    var swapFront = array[i]
    var swapBack = array[(array.length-1) - i]
    array[(array.length-1)-i] = swapFront;
    array[i] = swapBack;
  }
  return array;
}

console.log(reverseArrayInPlace(numberList));
