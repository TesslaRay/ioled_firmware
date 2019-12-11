load('api_i2c.js');

// Time between each state
let time = 120 * 1000;

let i2c = I2C.get();
let addr = 64;	//0x40 - 1000000

let vectorTemp = [];

let publishState = function() {
	Timer.set(
		time,
		Timer.REPEAT,
		function() {
			let St = I2C.readRegW(i2c, addr, 0xE3); 	// 1110 0011
			let temp = -46.85 + 175.72* St/Math.pow(2,16);

			let Srh = I2C.readRegW(i2c, addr, 0xE5);	// 1110 0101
			let hum = -6 + 125* Srh/Math.pow(2,16);		
	
			print('humidity: ',hum);
			print('temperature: ',temp);

			let res = MQTT.pub(stateTopic, JSON.stringify({temp: temp, hum: hum}), 1);
			print('Published:', res ? 'yes' : 'no');
		},
		null
	);
};
