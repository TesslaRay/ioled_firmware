load('api_neopixel.js');
load('api_events.js');
load('api_gcp.js')

// Get the neopixel pin (13)
let pin = Cfg.get('board.neopixel.pin');
// Get the number of pixels (3).
let numPixels = Cfg.get('board.neopixel.pixels');
// Create a and return a neoPixel strip object.
let strip = NeoPixel.create(pin, numPixels, NeoPixel.GRB);
// RGB colors.
let red = {r: 200, g: 20, b: 10};
let green = {r: 0, g: 250, b: 0};
let blue = {r: 0, g: 0, b: 0};

// Numeric timer ID
let timerId;
// The pixel index.
let pixel = 0;

/**
 * Network search function.
 * @description Pixel blinks on network discover. Stop blinking when connected.
 * @see https://github.com/mongoose-os-libs/mjs/blob/master/fs/api_events.js
 */
let netSearch = function() {
	// Set timer to change pixel every 500 ms.
	timerId = Timer.set(
		500,
		Timer.REPEAT,
		function() {
			pixel = (pixel + 1) % numPixels;
			setOnePixel(pixel, red);
		},
		null
	);
	
};

// Stop the timer on succeed cloud connection.
Event.addHandler(
	Event.CLOUD_CONNECTED,
	function() {
		print('Connected to cloud');
		Timer.del(timerId);
		setAllPixels(green);
	},
	null
);

/**
 *  Paint only one pixel of the strip.
 * @param {number} index The pixel index.
 * @param {{r: number, g: number, b: number}} color RGB color object.
 */
let setOnePixel = function(index, color) {
	strip.clear();
	strip.setPixel(index, color.r, color.g, color.b);
	strip.show();
};

/**
 * Paint all pixels on the strip.
 * @param {{r: number, g: number, b: number}} color RGB color object.
 */
let setAllPixels = function(color) {
	strip.clear();
	for (let i = 0; i < numPixels; i++) {
		strip.setPixel(i, color.r, color.g, color.b);
	}
	strip.show();
};
