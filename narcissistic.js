function narc(number) {
  var power = number.toString().length;
  var array = number.toString().split('');
  answer = 0;
  array.forEach(function(number) {
    answer += Math.pow(number, power)
  })
  return answer === number;
}

console.log(narc(153)) //=> true
console.log(narc(1634)) //=> true
console.log(narc(28)) //=> false
