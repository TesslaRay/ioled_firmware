/**
 * Delete cron entry with a given cron ID 
 * @param {int} cron_id
 */
let cronRemove = ffi('void mgos_cron_remove(int)');

function cronCallback_on(arg, cron_id){
    let now = Timer.now();
    let timestring = Timer.fmt('%T', now);
    print('Time on = ' + timestring);
    print('On Function');
    applyBoardConfig();
}

/**
 * Call cron callback (ON) in function with te expression tempo_on_cron 
 * @param {function} cronCallback_on callback for cron ON
 * @param {string} tempo_on_cron cron expression ON
 */
let cronAdd_on = ffi('int mgos_cron_add(char*, void (*)(userdata, int) ,userdata)');
let cronId_on  = 0;

/**
 * Call cron callback (OFF) in function with te expression *expr 
 * @param {function} cronCallback_off callback for cron OFF
 * @param {string} tempo_off_cron cron expression OFF 
 */
function cronCallback_off(arg, cron_id){
    let now = Timer.now();
    let timestring = Timer.fmt('%T', now);
    print('Time off = ' + timestring);
    print('Off Function');
    turnOffLed();
}

let cronAdd_off = ffi('int mgos_cron_add(char*, void (*)(userdata, int),userdata)');
let cronId_off  = 0;

let state_timer = true;

/**
 * Apply timer configuration.
 * @description Load a timer hour to the board if state timer if true.
 * @param {boolean} state_timer
 */
let applyTimerConfig = function() {
    /** CRON ON */
    let tempo_on = Cfg.get('board.timer.timerOn');
    tempo_on = JSON.stringify(tempo_on);
    if (JSON.parse(tempo_on) > 23){
        tempo_on = JSON.stringify(0);;
    }
    let tempo_on_cron = '0 18 ' + tempo_on + ' * * *';

    /** CRON OFF */
    let tempo_off = Cfg.get('board.timer.timerOff');
    tempo_off = JSON.stringify(tempo_off);
    if (JSON.parse(tempo_off) > 23){
        tempo_off = JSON.stringify(0);;
    }
    let tempo_off_cron = '0 20 ' + tempo_off + ' * * *';

    if (state_timer){
        cronRemove(cronId_on);
        cronId_on = cronAdd_on(tempo_on_cron, cronCallback_on, null);    

        cronRemove(cronId_off);
        cronId_off = cronAdd_off(tempo_off_cron, cronCallback_off, null); 
    } else {
        cronRemove(cronId_on);
        cronRemove(cronId_off);
    }      
};