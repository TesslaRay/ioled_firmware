// Cron de Encendido
let tempo_on = JSON.stringify(board.timer.cron_on);
let tempo_on_cron = '*/' + tempo_on + ' * * * * *';

function cronCallback_on(arg, cron_id){
    let now = Timer.now();
    let timestring = Timer.fmt('%FT%TZ', now);
    print('Time on = ' + timestring);
}

let cronAdd_on = ffi('int mgos_cron_add(char*, void (*)(userdata, int) ,userdata)');
let cronId_on  = 0;

/**
 * Apply timer configuration.
 * @description Load a timer hour to the board.
 * @param {string} hour
 */
// let applyTimerConfig = function() {
//     let cronId_on = cronAdd_on(tempo_on_cron, cronCallback_on, null);
//   };

// Cron de apagado
let tempo_off = JSON.stringify(0);
let tempo_off_cron = tempo_off + ' * * * * *';

function cronCallback_off(arg, cron_id){
    let now = Timer.now();
    let timestring = Timer.fmt('%FT%TZ', now);
    print('Time off = ' + timestring);
}

let cronAdd_off = ffi('int mgos_cron_add(char*, void (*)(userdata, int),userdata)');
let cronId_off = cronAdd_off(tempo_off_cron, cronCallback_off, null);

