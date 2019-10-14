mos --port /dev/cu.usbserial-1430 console

mos --port /dev/cu.usbserial-14120 license

mos --port /dev/cu.usbserial-14120 call OTA.Update '{"url":"https://github.com/TesslaRay/ioled_firmware/blob/master/build/fw.zip"}'

mos --port /dev/cu.usbserial-1430 ota FIRMWARE_FILENAME_OR_URL



// Desarrollo
mos --port /dev/cu.usbserial-1430 gcp-iot-setup --gcp-project ioled-dev-248517 --gcp-region us-central1 --gcp-registry ioled-devices

// Producción
mos --port /dev/cu.usbserial-1430 gcp-iot-setup --gcp-project ioled-production --gcp-region us-central1 --gcp-registry ioled-devices

mos --port /dev/cu.usbserial-14320 ota /Users/cristian/Documents/Development/iOLED_firmware/ioled-esp8266-firmware/build/fw.zip

mos --port /dev/cu.usbserial-14320 mdash-setup device1 506JdlOpt2TWnvAfiebUWQ



// Wifi Oficina iOLED
mos --port /dev/cu.usbserial-1430 wifi VTR-6439861 jkfq8yjFhwj9

mos --port /dev/cu.usbserial-1430 wifi DeptoVane2.4 vaneyuva2018

mos --port /dev/cu.usbserial-1410 wifi VTR-9004720 Tj3kzfbxwcrc

mos --port /dev/cu.usbserial-1430 wifi POCOPHONE 23581321

mos --port /dev/cu.usbserial-1430 wifi zapalloconhielo 98765432



// PUT

mos --port /dev/cu.usbserial-1430 put fs/mqtt.js

mos --port /dev/cu.usbserial-1430 put fs/tempo.js

mos --port /dev/cu.usbserial-1410 put fs/init.js

mos --port /dev/cu.usbserial-1430 put fs/board.js

// BUIDL 
mos build --platform esp8266

mos --port /dev/cu.usbserial-1430 flash


mos --port /dev/cu.usbserial-1410 call Sys.Reboot

mos --port /dev/cu.usbserial-14120 get conf9.json

