function printThreeDigitString(array) {
  array.forEach(function(num) {
    var numString = String(num)
    while (numString.length < 3) {
      numString = "0" + numString
    }
    console.log('Three digit-ified! ' + numString)
  });
}

numbers = [2, 23, 5, 12, 6, 133]

printThreeDigitString(numbers);
