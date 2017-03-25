for (i = 0; i < 100; i ++) {
  var num = i + 1;
  var text = "";
  if (num % 3 == 0) {
    text += "Fizz";
  }
  if (num % 5 == 0) {
    text += "Buzz";
  }
  num % 3 == 0 || num % 5 == 0 ? console.log(text) : console.log(num)
}
