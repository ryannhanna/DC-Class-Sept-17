var phonebookDict = new Map();
  phonebookDict.set('Alice', '703-493-1834');
  phonebookDict.set ('Bob', '857-384-1234');
  phonebookDict.set ('Elizabeth', '484-584-2923');

// prints dictionary Elizabeth to the console
console.log(phonebookDict.get("Elizabeth"));

phonebookDict.set('Kareem', "938-489-1234");

phonebookDict.delete("Alice");

phonebookDict.set("Bob", "968-345-2345");

console.log(phonebookDict);

var personName = "Elizabeth"
phonebookDict.get (personName);

for (var key of phonebookDict.keys()){

    console.log(phonebookDict.get (key));

}
