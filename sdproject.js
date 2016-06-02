const http = require('http');
const https = require('https');

const hostname = '127.0.0.1';
const port = 8080;

var responseIp;
var req = https.get('https://diagnostic.opendns.com/myip', function(response) {
        response.on('data', function(d) {
          responseIp = d;
        });
});

const server = http.createServer((req, res) => {
  res.statusCode = 200;
  res.setHeader('Content-Type', 'text/plain');
  res.end('Server:'+responseIp);
});

server.listen(port, hostname, () => {
  console.log(`Server running at http://${hostname}:${port}/`);
});
