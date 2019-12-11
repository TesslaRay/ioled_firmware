load('api_i2c.js');

// Time between each state
let time = 60 * 1000;

let i2c = I2C.get();

let addr = 64;	//0x40 - 1000000

let publishState = function() {
	Timer.set(
		time,
		Timer.REPEAT,
		function() {
			let Srh = I2C.readRegW(i2c, addr, 0xE5);	// 1110 0011
			let hum = -6 + 125* Srh/Math.pow(2,16);		

			let St = I2C.readRegW(i2c, addr, 0xE3); 	// 1110 0101
			let temp = -46.85 + 175.72* Srh/Math.pow(2,16);

			print('humidity: ',hum);
			print('temperature: ',temp);

			let res = MQTT.pub(stateTopic, JSON.stringify({temp: temp, hum: hum}), 1);
			print('Published:', res ? 'yes' : 'no');
		},
		null
	);
};
