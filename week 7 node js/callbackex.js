function add (x, y, callback) {
  var result = x + y;
  callback(result);
}
add(1, 2, function (result) { console.log(result); });



function subtract(x, y, callback) {
var result = x - y;
  callback(result);
  subtract(1,2 function (result) {console.log((result);});
}



function greeting(person, hola, callback) {
var result = person + hola
  callback(result)
}


function product(numbers,callback) {
var x = numbers.reduce(function(a,b){
  return a * b;
  }, 1);
  callback(x);
}
