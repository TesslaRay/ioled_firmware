/**
 * Object with the board config.
 * Each key (i.e led1, led2, ...) must have the same name
 * with the one declared in the mos.yml file.
 */
let board = {
  btn1: {
    pin: Cfg.get("board.btn1.pin"),
    ctrl: Cfg.get("board.btn1.control")
  },
  led1: {
    onhi: Cfg.get("board.led1.active_high"),
    duty: Cfg.get("board.led1.duty"),
    freq: Cfg.get("board.led1.freq"),
    pin: Cfg.get("board.led1.pin"),
    state: Cfg.get("board.led1.state")
  },
  led2: {
    onhi: Cfg.get("board.led2.active_high"),
    duty: Cfg.get("board.led2.duty"),
    freq: Cfg.get("board.led2.freq"),
    pin: Cfg.get("board.led2.pin"),
    state: Cfg.get("board.led2.state")
  },
  timer: {
    timerOn: Cfg.get("board.timer.timerOn"),
    timerOff: Cfg.get("board.timer.timerOff"),
    timerState: Cfg.get("board.timer.timerState")
  }
};

/** Initialize board.
 * @description Update all led values on board start and set GPIO modes.
 */
let initBoard = function() {
  print("Initializing board ...");
  GPIO.set_mode(board.led1.pin, GPIO.MODE_OUTPUT);
  GPIO.set_mode(board.led2.pin, GPIO.MODE_OUTPUT);
  applyBoardConfig();
};

/**
 * Change the state of the led between PWM - off
 * @param {string} ledName The led name from the board object.
 * @param {boolean} turn True to change the actual led state. False just to refresh the pwm.
 * @see https://github.com/mongoose-os-libs/pwm/blob/master/mjs_fs/api_pwm.js
 */
let switchLed = function(ledName, turn) {
  let led = board[ledName];
  led.state = turn ? !led.state : led.state;
  if (led.state) {
    if (led.duty === 0 || led.duty === 1) {
      PWM.set(led.pin, 0, led.duty);
      GPIO.write(led.pin, led.duty ? !led.onhi : led.onhi);
    } else {
      PWM.set(led.pin, led.freq, led.duty);
    }
  } else {
    PWM.set(led.pin, 0, led.duty);
    // Only disabling the pin doesn't always turn it off. (case: onhi = false), so use GPIO.write.
    GPIO.write(led.pin, !led.onhi);
  }
  print(ledName, "state:", led.state ? "true" : "false");
};

/**
 * Get the configuration from the cloud and set it to the mos.yml file.
 * @param {string | Object} msg String with the configuration message.
 * @example // update led1 and led2 with 0.5 duty and 20 freq.
 * // msg : {"board": {"led1":{"freq":20, "duty": 0.5, "state": true}, "led2":{"freq":20, "duty": 0.5, "state": true}}}
 */
let getConfigFromCloud = function(msg) {
  print("[MONGOOSE][GETCONFIGFROMCLOUD] MSG:", msg);
  let obj = JSON.parse(msg);
  Cfg.set(obj);
  return obj;
};

/**
 * Apply the configuration to all leds.
 * @description Load all the led configuration from the mos.yml file and apply it to the board.
 */
let applyBoardConfig = function() {
  for (let ledName in board) {
    if (ledName.indexOf("led") >= 0) {
      applyLedConfig(ledName);
    }
  }
};

/**
 * Apply a single led configuration.
 * @description Load a single led configuration from the board.
 * @param {string} ledName The led name from the board object.
 */
let applyLedConfig = function(ledName) {
  let led = board[ledName];
  let brd = "board." + ledName + ".";
  led.onhi = Cfg.get(brd + "active_high");
  led.duty = Cfg.get(brd + "duty");
  led.freq = Cfg.get(brd + "freq");
  led.state = Cfg.get(brd + "state");
  normDuty(ledName);
  switchLed(ledName, false);
};

/**
 * Turn off all led.
 * @description Put all led duty in 0.
 * @param {string} ledName The led name from the board object.
 */
let turnOffLed = function(ledName) {
  for (let ledName in board) {
    if (ledName.indexOf("led") >= 0) {
      let led = board[ledName];
      let brd = "board." + ledName + ".";
      led.onhi = 1;
      led.duty = Cfg.get(brd + "duty");
      led.freq = Cfg.get(brd + "freq");
      led.state = false;
      normDuty(ledName);
      switchLed(ledName, false);
    }
  }
};

/**
 * Normalize the value of the duty cycle between 0 - 1.
 * @param {string} ledName The led name from the board object.
 */
let normDuty = function(ledName) {
  let led = board[ledName];
  if (led.duty >= 1) {
    led.duty = led.onhi ? 0.0 : 1.0;
    return;
  }
  if (led.duty <= 0) {
    led.duty = led.onhi ? 1.0 : 1.0;
    return;
  }
  led.duty = led.onhi ? led.duty : 1.0 - led.duty;
};

/**
 * Set the device button function.
 * @see https://github.com/mongoose-os-libs/mjs/blob/master/fs/api_gpio.js
 */
let setButton = function() {
  GPIO.set_button_handler(
    board.btn1.pin,
    GPIO.PULL_UP,
    GPIO.INT_EDGE_NEG,
    10,
    function() {
      switchLed(board[board.btn1.ctrl], true);
      print("freq : ", board[board.btn1.ctrl].freq);
      print("duty : ", board[board.btn1.ctrl].duty);
    },
    null
  );
};
