const http = require('http');

let handleRequest = function(request, response) {
  console.log('Received request for URL:', request.url);
  response.writeHead(200);
  response.end('HELLO WORLD!');
}
let www = http.createServer(handleRequest);
www.listen(8080);