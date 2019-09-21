load('api_dht.js');

// Create the sensor object.
let sensor = DHT.create(0, DHT.DHT22);

// Time between each config
let time = 5000;

let publishState = function() {
	Timer.set(
		time,
		Timer.REPEAT,
		function() {
			//print('temperature:', sensor.getTemp());
			//print('hum:', sensor.getHumidity());
			let res = MQTT.pub(stateTopic, JSON.stringify({temp: sensor.getTemp(), hum: sensor.getHumidity()}), 1);
			//print('Published:', res ? 'yes' : 'no');
		},
		null
	);
};
