load('api_i2c.js');

// Time between each config
let time = 2000;

// let bus = I2C.get();
// let addr = 0x64;

// let data = '\x12\x34';
// let initOK = I2C.writeRegB(i2c, addr, 0x6B, 0x00); // doc for I2C.writeRegB
// if (false === initOK) {
// 	print('!!!! - failed to init sensor - !!!!');
// } 

let publishState = function() {
	Timer.set(
		time,
		Timer.REPEAT,
		function() {
			// let dataReceived = I2C.read(bus, addr, 7, true); //reading 2 bytes
			// print(dataReceived);
			// 	let data = I2C.read(bus, 31, 3, true);  // Read 3 bytes
		// 	if (data) print(JSON.stringify([data.at(0), data.at(1), data.at(2)]));
		},
		null
	);
};
