mos --port /dev/cu.usbserial-14120 console

mos --port /dev/cu.usbserial-14120 license

mos --port /dev/cu.usbserial-14120 call OTA.Update '{"url":"https://github.com/TesslaRay/ioled_firmware/blob/master/build/fw.zip"}'

mos --port /dev/cu.usbserial-14320 ota FIRMWARE_FILENAME_OR_URL

// Desarrollo
mos --port /dev/cu.usbserial-14120 gcp-iot-setup --gcp-project ioled-dev-248517 --gcp-region us-central1 --gcp-registry ioled-devices

// Producción
mos --port /dev/cu.usbserial-1430 gcp-iot-setup --gcp-project ioled-production --gcp-region us-central1 --gcp-registry ioled-devices

mos --port /dev/cu.usbserial-14320 ota /Users/cristian/Documents/Development/iOLED_firmware/ioled-esp8266-firmware/build/fw.zip

mos --port /dev/cu.usbserial-14320 mdash-setup device1 506JdlOpt2TWnvAfiebUWQ

mos --port /dev/cu.usbserial-14120 wifi VTR-6439861 jkfq8yjFhwj9

mos --port /dev/cu.usbserial-1430 wifi VTR-2561534 xt6JcnyhF4yf

mos --port /dev/cu.usbserial-1430 wifi POCOPHONE 23581321

mos --port /dev/cu.usbserial-1430 wifi zapalloconhielo 98765432

mos --port /dev/cu.usbserial-14120 flash

mos --port /dev/cu.usbserial-14320 build

mos --port /dev/cu.usbserial-14120 put fs/mqtt.js

mos --port /dev/cu.usbserial-1430 put fs/init.js

mos build --platform esp8266

mos --port /dev/cu.usbserial-1410 call Sys.Reboot

mos --port /dev/cu.usbserial-14120 get conf9.json
