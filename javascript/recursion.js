function isEven(number) {
  if (number === 0) {
    return true;
  } else if (number === 1) {
    return false;
  } else {
    number = isEven(number - 2);
  }
  return number;
}

console.log(isEven(1163));
