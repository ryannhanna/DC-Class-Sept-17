var express = require('express');
var app = express();
app.set('views', './views');
app.set('view engine', 'hbs');

app.get('/', function (reqest, response) {
  response.send('Hello World!');
});

app.get('/cats', function(request,response){
  response.send('Meow!')

});

app.get('/dogs' , function(request,response){
  response.send("Woof!")
});


app.get('/cats_and_dogs' , function(request,response){
  response.send("Living Together!")

});

app.get('/greet/:slug' , function(request,response){
let slug = request.params.slug;
let year = request.query.age || 2017
let age = Number(2017) - Number(year);
response.render( 'home', {slug: slug, age: age});
});

app.get('/fav_animals' , function (request,response){

  var animals = [
    { name: 'cats', favorite: true },
    { name: 'dogs', favorite: true },
    { name: 'tree frogs', favorite: true },
    { name: 'earth worms', favorite: false },
    { name: 'guinea pigs', favorite: true },
  ];

response.render('animals',{animals: animals});
});






app.get("/year/:slug" , function(request,response){
  var slug = request.params.slug;
  response.send("You were born in" + " " + slug + ".");

});


app.listen(8000, function () {
  console.log('Listening on port 8000');
});
