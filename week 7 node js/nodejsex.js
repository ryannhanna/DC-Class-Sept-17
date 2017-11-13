
var fs = require('fs');
var readline = require('readline');

var rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});
rl.question("What file? ", function(filename) {
  console.log("Here is your file:", filename);
  fs.readFile(filename, function (error, buffer) {
    if (error) {
      console.error(error.message);
      return;
    }

  });
});
