var days = ["Sunday", "Monday", "Tuesday", 'Wednesday',' Thursday', 'Friday', 'Saturday']
var t = new Date;

function amPm(t) {
  if (t.getHours() < 12) {
    return t.getHours() + " AM"
  } else if (t.getHours() === 12) {
    return t.getHours() + " PM"
  } else if (t.getHours() > 12) {
    t - 12;
    return t.getHours() + " PM"
  } else if (t.getHours() === 0) {
    return "12 AM"
  }
}

sentence = 'Today is : ' + days[t.getDay()] + '. ' + 'Current time is : ' + amPm(t) + ' : ' + t.getMinutes() + ' : ' + t.getSeconds();
console.log(sentence)
