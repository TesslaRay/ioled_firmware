// Topic to send events.
let commandsTopic = '/devices/' + Cfg.get('device.id') + '/commands';
// Topic to receive config.
let configTopic = '/devices/' + Cfg.get('device.id') + '/config';
// Topic to send state data.
let stateTopic = '/devices/' + Cfg.get('device.id') + '/state';

/**
 * Subscribe to a MQTT topic and receive config data from IoT Core.
 * @configTopic (str): mqtt topic to subscribe.
 * @param {string } topic Mqtt topic.
 * @param {string} msg config message from the cloud.
 * @see https://github.com/mongoose-os-libs/mqtt/blob/master/mjs_fs/api_mqtt.js
 */
let connectMqtt = function() {
  print('Connecting to Mqtt topic: ', configTopic);
  MQTT.sub(configTopic, function(conn, topic, msg) {
    print('Topic:', topic, 'message:', msg);
    getConfigFromCloud(msg);
    applyBoardConfig();
    applyTimerConfig();
  });
};

let commandsMqtt = function() {
  print('Connecting to Mqtt topic: ', commandsTopic);
  MQTT.sub(commandsTopic, function(conn, topic, msg) {
    let eventObj = JSON.parse(msg);
    print(JSON.stringify(eventObj));

    if (eventObj.event === 'reboot'){
      print('Reiniciando ...');
      Sys.reboot(1);
    }

    if (eventObj.event === 'ota'){
      print('Actualizando ...');
      Timer.del(timerId);
      setAllPixels(red);
      RPC.call(RPC.LOCAL, 'OTA.update', '{"url":"https://github.com/TesslaRay/ioled_firmware/blob/master/build/fw.zip?raw=true"}', function(resp, ud) {
      }, null);
     
    }
    
  });
};
