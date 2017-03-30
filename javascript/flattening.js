arrayOfArrays = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9],
  [10, 11, 12]
]

function flatten(arrayToFlatten) {
  flattenedArray = arrayToFlatten.reduce(
    (acc, cur) => acc.concat(cur)
  )
  return flattenedArray
}

console.log(flatten(arrayOfArrays))
