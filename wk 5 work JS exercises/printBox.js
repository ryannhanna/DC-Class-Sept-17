function printBox(width, height){
  var row = "*".repeat(width);{
  console.log(row);
  }
  var emptyspace = "*" + " ".repeat(width - 2) + "*";{
  for (var i = 0; i < height - 2; i++)
    console.log(emptyspace);
  }


  console.log(row);
}

printBox(6, 4);
