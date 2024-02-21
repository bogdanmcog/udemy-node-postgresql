const http = require("http");

const hostname = "localhost";

const port = 3006;

const server = http.createServer(function (req, res) {
  const { url } = req;
  console.log(url);
  if (url === "/api") {
    res.end("welcome to my server!");
  }
  // res.end("welcome to node modu222s!");
});

server.listen(port, hostname, () => {
  console.log(`Server running on port:${port} at hostname:${hostname}`);
});
