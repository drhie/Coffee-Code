//MAKING AN ARRAY INTO A LIST
var array = [1, 2, 3];
function arrayToList(array) {
  return create(0);
  function create(i) {
    var i = i || 0;
    var list = {};
    list.value = array[i];
    if (i == array.length-1)
      list.rest = null
    else
      list.rest = create(i + 1)
    return list;
  };
}
console.log(arrayToList(array));


//MAKING AN ARRAY FROM A LIST
var list = { value: 1, rest: { value: 2, rest: { value: 3, rest: null } } }
function listToArray(list) {
  var array = [];
  return valueFinder(list, array);
  function valueFinder(list, array) {
    array.push(list.value);
    if (list.rest !== null) {
      return valueFinder(list.rest, array);
    }
    return array;
  }
}
console.log(listToArray(list));

//PREPENDING AN ELEMENT TO THE FRONT OF A LIST
function prepend(element, list) {
  var list = {
    value: element,
    rest: list,
  }
  return list;
}
console.log(prepend(0, list));

//ACCESSING THE NTH ELEMENT IN A LIST
function nth(list, number) {
  return elementAccessor(list, number);
  function elementAccessor(list, number) {
    if (list === null) return undefined;
    if (list.value === number) {
      return list;
    } else {
      return elementAccessor(list.rest, number)
    }
  }
}
console.log(nth(list, 2))
