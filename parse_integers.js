var parseNumbers = function(intStrs) {
  array = []
  intStrs.forEach (function (num) {
    var num = parseInt(num);
    array.push(num);
  })
  return array;
}

// COFFEE & CODE'S SOLUTION (READ THE DOCS!)
// var parseNumbers = function(intStrs) {
//   return intStrs.map(function(currentValue) {
//     return parseInt(currentValue);
//   });
// }

console.log(parseNumbers(['-1', '0', '1']))
