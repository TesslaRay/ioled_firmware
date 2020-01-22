mos --port /dev/cu.usbserial-1430 console

mos --port /dev/cu.usbserial-1430 license

mos license-save-key 6a76944ccefe949eae1fce12cd81ab28


mos dash.token=iAIe7HlWs91A5UHEGb6nc0A --port /dev/cu.usbserial-1430


mos --port /dev/cu.usbserial-1430 call OTA.Update ' {"url":"https://github.com/TesslaRay/ioled_firmware/raw/master/build/fw.zip"}'


mos --port /dev/cu.usbserial-1430 call OTA.Update ' {"url":"https://github.com/TesslaRay/ioled_firmware/blob/master/build/fw.zip"}'


mos --port /dev/cu.usbserial-1430 ota https://github.com/TesslaRay/ioled_firmware/raw/master/build/fw.zip

// Desarrollo
mos --port /dev/cu.usbserial-1430 gcp-iot-setup --gcp-project ioled-dev-248517 --gcp-region us-central1 --gcp-registry ioled-devices

// Producción
mos --port /dev/cu.usbserial-1430 gcp-iot-setup --gcp-project ioled-production --gcp-region us-central1 --gcp-registry ioled-devices

mos --port /dev/cu.usbserial-14320 ota /Users/cristian/Documents/Development/iOLED_firmware/ioled-esp8266-firmware/build/fw.zip

mos --port /dev/cu.usbserial-1430 mdash-setup device17 iAIe7HlWs91A5UHEGb6nc0A



// Wifi Oficina iOLED
mos --port /dev/cu.usbserial-1430 wifi VTR-4224955 km8Jnhbyc5qp

mos --port /dev/cu.usbserial-1430 wifi VTR-3465258 6dfvcjCCgcdf

mos --port /dev/cu.usbserial-1430 wifi DeptoVane2.4 vaneyuva2018

mos --port /dev/cu.usbserial-1410 wifi VTR-9004720 Tj3kzfbxwcrc

mos --port /dev/cu.usbserial-1430 wifi POCOPHONE 23581321

mos --port /dev/cu.usbserial-1430 wifi zapalloconhielo 98765432

mos --port /dev/cu.usbserial-1430 wifi AndroidAP25E7 123456789




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



mos --port /dev/cu.usbserial-1430 config-set debug.level=1


mos --port /dev/cu.usbserial-1410 call Sys.Reboot

mos --port /dev/cu.usbserial-1430 call RPC.list


mos --port /dev/cu.usbserial-14120 get conf9.json







// VCON. IO

mos flash https://mdash.net/downloads/ccm/ccm.esp8266.zip --port /dev/cu.usbserial-1430






