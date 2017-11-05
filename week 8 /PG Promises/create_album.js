var pgp = require('pg-promise')({});
var rlp = require('readline-promise')
var db = pgp({database: 'music'})

console.log('Hi, welcome to album-maker 5000! Let\'s get stated, shall we?')

var lines = [];
console.log("What is the album name?");
rlp.createInterface({
input: process.stdin,
output: process.stdout
})
.each(function(line){
lines.push(line);
if (lines.length == 1) {
  console.log('What is the album year?');
} else if (lines.length == 2) {
  console.log(lines);
  var new_album = {name: lines[0], release_date: lines[1]};
  var q = "INSERT INTO album VALUES (default, ${name}, ${release_date})";
  db.result(q, new_album)
    .then(function(result){
      // console.log(result);
      pgp.end();
      process.exit();
    })
    .catch(function(error){
      console.log(error);
    })
}
})
