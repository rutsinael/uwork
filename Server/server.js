var net = require('net');

var server = net.createServer(function (socket) {
    socket.write('Echo server\r\n');
    socket.pipe(socket);
    socket.on('data', function (data) {
        console.log(data.toString());
    })
});

server.listen(1337, '192.168.0.36');

