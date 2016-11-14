const http = require('http');
const os = require('os');
var hostname = os.hostname();

http.createServer((request, response) => {
  var msg = `Hello World from ${hostname} @ ${new Date()}`;
  console.log(msg);
  response.writeHead(200, {'Content-Type': 'text/plain'});
  response.end(msg);
}).listen(8080);

console.log(`Server running at http://localhost:8080/`);
