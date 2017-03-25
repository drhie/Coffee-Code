function countLetter(string, letter) {
  var count = 0;
  var string = string.split("");
  string.forEach(function(e) {
    if (e === letter)
      count ++;
  })
  return count;
}

console.log(countLetter("I think Bertha Bork is really big", "B"));
