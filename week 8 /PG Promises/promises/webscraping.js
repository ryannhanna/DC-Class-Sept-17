// Given an array of urls:
//

var rp = require('request-promise');
var fs = require('fs-promise');

var urls = [
  'https://en.wikipedia.org/wiki/Futures_and_promises',
  'https://en.wikipedia.org/wiki/Continuation-passing_style',
  'https://en.wikipedia.org/wiki/JavaScript',
  'https://en.wikipedia.org/wiki/Node.js',
  'https://en.wikipedia.org/wiki/Google_Chrome'
];


axios.get(api_url)
  .then(function (response) {
    console.log(response.data);
  })
  .catch(function (error) {
    console.error(error);
  });


var p1 = axios.get(api_url);
var p2 = axios.get(api_url);


Promise.all([p1, p2])
  .then(function (responses) {
    console.log(responses[0].data);
    console.log(responses[1].data);
  });
