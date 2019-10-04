/**
 * Delete cron entry with a given cron ID 
 * @param {int} cron_id
 */
let cronRemove = ffi('void mgos_cron_remove(int)');

function cronCallback(arg, cron_id){
    let now = Timer.now();
    let timestring = Timer.fmt('%T', now);
    let timerNow = formatTime('%H', now);

    print('Time = ' + timestring);
    let tempoOn = Cfg.get('board.timer.timerOn');
    tempoOn = JSON.stringify(tempoOn);
    let tempoOff = Cfg.get('board.timer.timerOff');
    tempoOff = JSON.stringify(tempoOff);
 
    let time = JSON.parse(timerNow) - 3;    //  Ajuste horario
    let timeOn = JSON.parse(tempoOn);
    let timeOff = JSON.parse(tempoOff);
   
    if((time <= timeOn) && (time >= timeOff)){
        turnOffLed();
    } else {
        applyBoardConfig();
    }    
}

function formatTime(fmt, time) {
    if (!fmt) return 'invalid format';
    let res = 0, t = Math.round(time || Timer.now()), s = '      ';
    while (res === 0) {
      res = Timer._f(s, s.length, fmt, t);
      if (res === -1) return 'invalid time';
      if (res === 0) s += '     ';
    }
    return s.slice(0, res);
  }

/**
 * Call cron callback (ON)in function with te expression tempo_on_cron 
 * @param {function} cronCallback_on callback for cron ON
 * @param {string} tempo_on_cron cron expression ON
 */
let cronAdd = ffi('int mgos_cron_add(char*, void (*)(userdata, int) ,userdata)');
let cronId  = 0;

let state_timer = true;

/**
 * Turn on/off cron 
 * @description Turn on/off if state_timer is true
 * @param {boolean} state_timer
 */

let applyTimerConfig = function() {
    state_timer = Cfg.get('board.timer.timerState');    
    let timer = '*/5 * * * * *';
    cronRemove(cronId);
    if (state_timer){
        cronId = cronAdd(timer, cronCallback, null);    
    } else {
        
    }      
};