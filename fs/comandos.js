mos --port /dev/cu.usbserial-14320 console

mos --port /dev/cu.usbserial-14320 license

mos --port /dev/cu.usbserial-14320 call OTA.Update '{"url": "https://drive.google.com/file/d/1-Ns2eTCRx-VCYnl9Yv0bhmwSaNhxMy4Q/view?usp=sharing"}'

mos --port /dev/cu.usbserial-14320 ota FIRMWARE_FILENAME_OR_URL

mos --port /dev/cu.usbserial-14320 gcp-iot-setup --gcp-project stark-ml-2 --gcp-region us-central1 --gcp-registry ioled-devices


mos --port /dev/cu.usbserial-14320 ota /Users/cristian/Documents/Development/iOLED_firmware/ioled-esp8266-firmware/build/fw.zip

mos --port /dev/cu.usbserial-14320 mdash-setup device1 506JdlOpt2TWnvAfiebUWQ

mos --port /dev/cu.usbserial-14320 wifi VTR-6439861 jkfq8yjFhwj9

mos --port /dev/cu.usbserial-14320 wifi POCOPHONE 23581321


mos --port /dev/cu.usbserial-14320 flash

mos --port /dev/cu.usbserial-14320 build

mos --port /dev/cu.usbserial-14320 put fs/neopixel.js

mos --port /dev/cu.usbserial-14320 put fs/mqtt.js


mos build --platform esp8266

mos --port /dev/cu.usbserial-14320 call Sys.Reboot
