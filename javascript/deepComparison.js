function deepEqual(a, b) {
  if (a === b) return true;
  if (typeof a !== "object" || typeof b !== "object") return false;
  for (var p in a) {
    if (!b.hasOwnProperty(p)) return false;
    if (a[p] === b[p]) continue;
    if (typeof(a[p]) !== "object") return false;
    if (! deepEqual(a[p], b[p])) return false;
  }
  for (p in b) {
    if (b.hasOwnProperty(p) && !a.hasOwnProperty(p)) return false;
  }
  return true;
}

console.log(deepEqual({a:2, b:3}, {b:2, c:4})); //=> false
console.log(deepEqual("hi", "hi")); //=> true
console.log(deepEqual({a:2, b:{c: 5}}, {a:2, b:{c: 5}})); //=> true
