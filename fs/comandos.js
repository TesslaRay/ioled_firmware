mos --port /dev/cu.usbserial-1430 console

mos --port /dev/cu.SLAB_USBtoUART  console

mos --port /dev/cu.usbserial-1430 call OTA.Update '{"url":"https://github.com/TesslaRay/ioled_firmware/raw/master/build/fw.zip"}'

// Desarrollo
mos --port /dev/cu.SLAB_USBtoUART gcp-iot-setup --gcp-project ioled-dev-262215 --gcp-region us-central1 --gcp-registry ioled-devices

// Producción
mos --port /dev/cu.usbserial-1430 gcp-iot-setup --gcp-project ioled-production --gcp-region us-central1 --gcp-registry ioled-devices

// Wifi Oficina iOLED
mos --port /dev/cu.usbserial-1430 wifi VTR-4224955 km8Jnhbyc5qp

mos --port /dev/cu.usbserial-1430 wifi VTR-3465258 6dfvcjCCgcdf

mos --port /dev/cu.usbserial-1430 wifi DeptoVane2.4 vaneyuva2018

mos --port /dev/cu.usbserial-1410 wifi VTR-9004720 Tj3kzfbxwcrc

mos --port /dev/cu.usbserial-1430 wifi POCOPHONE 23581321

mos --port /dev/cu.usbserial-1430 wifi zapalloconhielo 98765432

mos --port /dev/cu.usbserial-1430 wifi AndroidAP25E7 123456789

mos wifi 'Valentina Munoz' vale3006


// PUT
mos --port /dev/cu.usbserial-1430 put fs/mqtt.js

mos --port /dev/cu.usbserial-1430 put fs/tempo.js

mos --port /dev/cu.usbserial-1430 put fs/init.js

mos --port /dev/cu.usbserial-1430 put fs/board.js

mos --port /dev/cu.usbserial-1430 put fs/sensors.js

mos --port /dev/cu.usbserial-1430 call I2C.Read '{"addr": 64, "len": 2}'


// BUILD
mos build --platform esp8266

mos --port /dev/cu.usbserial-1430 flash

mos --port /dev/cu.usbserial-1430 call I2C.Scan

mos --port /dev/cu.usbserial-1430 call I2C.Read '{"addr": 64, "len": 2}'





mos --port /dev/cu.usbserial-1410 call Sys.Reboot

mos --port /dev/cu.usbserial-14120 get conf9.json

mos --port /dev/cu.usbserial-1430 call OTA.Update '{"url": "https://github.com/TesslaRay/ioled_firmware/blob/master/build/fw.zip?raw=true", "commit_timeout": 300}'


// MDASH
mos --port /dev/cu.usbserial-1430 config-set dash.enable=true dash.token=iAIe7HlWs91A5UHEGb6nc0A

mos config-set dash.enable=true dash.token=iAIe7HlWs91A5UHEGb6nc0A


curl https://mdash.net/api/v2/devices/device17/rpc/OTA.Commit?access_token=6dkD35jCX91QTykAtlfnpew

https://mdash.net/api/v2/devices?access_token=6dkD35jCX91QTykAtlfnpew


mos --port /dev/cu.usbserial-1430 config-set debug.level=2


mos --port /dev/cu.usbserial-1430 call OTA.Commit

mos --port /dev/cu.usbserial-1430 call RPC.list

mos --port /dev/cu.usbserial-1430 call OTA.CreateSnapshot

mos --port /dev/cu.usbserial-1430 call OTA.Revert




mos --port /dev/cu.usbserial-1430 call OTA.SetBootState '{"revert_slot": 1}'



mos  gcp-iot-setup --gcp-project ioled-dev-262215 --gcp-region us-central1 --gcp-registry ioled-devices
