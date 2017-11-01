var express = require('express');
var app = express();


app.set('view engine', 'hbs');
const body_parser = require('body-parser');
app.use(body_parser.urlencoded({extended: false}));
app.post('/submit', function (request, response) {
  console.log(request.body);
  response.send('OK');
});

response.redirect('/some-where-else');


app.get('/search', function(req, resp, next) {
  let term = req.query.searchTerm;
  let query = "SELECT * FROM restaurant WHERE \
  restaurant.name ILIKE '%$1#%'";
  db.any(query, term)
    .then(function(resultsArray) {
      resp.render('search_results.hbs', {
        results: resultsArray
      });
    })
    .catch(next);
});

var express = require('express');
var app = express();
app.get('/', function (request, response) {
  response.send('Hello World!');
});
app.listen(8000, function () {
  console.log('Listening on port 8000');
});
app.use(express.static('public'));
app.get('/', function (request, response) {
  response.send('Hello World!');
});
app.listen(8000, function () {
  console.log('Listening on port 8000');
});

app.get('/about', function (request, response) {
  response.send('About Me');
});
app.get('/projects', function (request, response) {
  response.send('Projects');
});

app.get('/post/:slug', function (request, response) {
  var slug = request.params.slug;
  response.send('Post About: ' + slug);
});

app.get('/hello', function (request, response) {
  var name = request.query.name || 'World';
  response.send('Hello ' + name);
});

app.get('/hello', function (request, response) {
  var name = request.query.name || 'World';
  var context = {title: 'Hello', name: name};
  response.render('hello.hbs', context);
});
