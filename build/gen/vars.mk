APP=ioled_firmware
APP_BIN_LIBS=/data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/build/objs/libmbedtls-esp8266-2.16.0.a /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/build/objs/libmongoose-esp8266-2.16.0.a /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/build/objs/libota-common-esp8266-2.16.0.a /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/build/objs/libota-http-client-esp8266-2.16.0.a /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/build/objs/librpc-service-ota-esp8266-2.16.0.a
APP_CFLAGS=-DMBEDTLS_ECP_ATCA=1 -DMBEDTLS_FREE_CERT_CHAIN=1 -DMBEDTLS_USER_CONFIG_FILE=\"mbedtls_platform_config.h\" -DMBEDTLS_X509_CA_CHAIN_ON_DISK=1 -DMGOS=1 -DMGOS_ENABLE_FILE_UPLOAD=1 -DMGOS_ENABLE_RPC_CHANNEL_HTTP=1 -DMGOS_ENABLE_SYS_SERVICE=1 -DMGOS_ENABLE_WEB_CONFIG=0 -DMGOS_HAVE_ATCA=1 -DMGOS_HAVE_CA_BUNDLE=1 -DMGOS_HAVE_CORE=1 -DMGOS_HAVE_CRON=1 -DMGOS_HAVE_DHT=1 -DMGOS_HAVE_GCP=1 -DMGOS_HAVE_HTTP_SERVER=1 -DMGOS_HAVE_I2C=1 -DMGOS_HAVE_LOCATION=1 -DMGOS_HAVE_MBEDTLS=1 -DMGOS_HAVE_MJS=1 -DMGOS_HAVE_MONGOOSE=1 -DMGOS_HAVE_MQTT=1 -DMGOS_HAVE_NEOPIXEL=1 -DMGOS_HAVE_OTA_COMMON=1 -DMGOS_HAVE_OTA_HTTP_CLIENT=1 -DMGOS_HAVE_PWM=1 -DMGOS_HAVE_RPC_COMMON=1 -DMGOS_HAVE_RPC_LOOPBACK=1 -DMGOS_HAVE_RPC_SERVICE_CONFIG=1 -DMGOS_HAVE_RPC_SERVICE_FS=1 -DMGOS_HAVE_RPC_SERVICE_OTA=1 -DMGOS_HAVE_RPC_UART=1 -DMGOS_HAVE_SNTP=1 -DMGOS_HAVE_VFS_COMMON=1 -DMGOS_HAVE_VFS_DEV_PART=1 -DMGOS_HAVE_VFS_FS_SPIFFS=1 -DMGOS_HAVE_WIFI=1 -DMGOS_HAVE_WIFI_SETUP_WEB_UI=1 -DMGOS_HAVE_ZZ_BOARDS=1 -DMGOS_WIFI_ENABLE_AP_STA=1 -DMG_ENABLE_DNS=1 -DMG_ENABLE_DNS_SERVER=1 -DMG_ENABLE_MQTT=1 -DMG_ENABLE_SNTP=1 -DMG_ENABLE_SSL=1 -DMG_SSL_IF=MG_SSL_IF_MBEDTLS -DMG_SSL_IF_MBEDTLS_FREE_CERTS=1
APP_CONF_SCHEMA=/data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/build/gen/mos_conf_schema.yml
APP_CXXFLAGS=-DMBEDTLS_ECP_ATCA=1 -DMBEDTLS_FREE_CERT_CHAIN=1 -DMBEDTLS_USER_CONFIG_FILE=\"mbedtls_platform_config.h\" -DMBEDTLS_X509_CA_CHAIN_ON_DISK=1 -DMGOS=1 -DMGOS_ENABLE_FILE_UPLOAD=1 -DMGOS_ENABLE_RPC_CHANNEL_HTTP=1 -DMGOS_ENABLE_SYS_SERVICE=1 -DMGOS_ENABLE_WEB_CONFIG=0 -DMGOS_HAVE_ATCA=1 -DMGOS_HAVE_CA_BUNDLE=1 -DMGOS_HAVE_CORE=1 -DMGOS_HAVE_CRON=1 -DMGOS_HAVE_DHT=1 -DMGOS_HAVE_GCP=1 -DMGOS_HAVE_HTTP_SERVER=1 -DMGOS_HAVE_I2C=1 -DMGOS_HAVE_LOCATION=1 -DMGOS_HAVE_MBEDTLS=1 -DMGOS_HAVE_MJS=1 -DMGOS_HAVE_MONGOOSE=1 -DMGOS_HAVE_MQTT=1 -DMGOS_HAVE_NEOPIXEL=1 -DMGOS_HAVE_OTA_COMMON=1 -DMGOS_HAVE_OTA_HTTP_CLIENT=1 -DMGOS_HAVE_PWM=1 -DMGOS_HAVE_RPC_COMMON=1 -DMGOS_HAVE_RPC_LOOPBACK=1 -DMGOS_HAVE_RPC_SERVICE_CONFIG=1 -DMGOS_HAVE_RPC_SERVICE_FS=1 -DMGOS_HAVE_RPC_SERVICE_OTA=1 -DMGOS_HAVE_RPC_UART=1 -DMGOS_HAVE_SNTP=1 -DMGOS_HAVE_VFS_COMMON=1 -DMGOS_HAVE_VFS_DEV_PART=1 -DMGOS_HAVE_VFS_FS_SPIFFS=1 -DMGOS_HAVE_WIFI=1 -DMGOS_HAVE_WIFI_SETUP_WEB_UI=1 -DMGOS_HAVE_ZZ_BOARDS=1 -DMGOS_WIFI_ENABLE_AP_STA=1 -DMG_ENABLE_DNS=1 -DMG_ENABLE_DNS_SERVER=1 -DMG_ENABLE_MQTT=1 -DMG_ENABLE_SNTP=1 -DMG_ENABLE_SSL=1 -DMG_SSL_IF=MG_SSL_IF_MBEDTLS -DMG_SSL_IF_MBEDTLS_FREE_CERTS=1
APP_FS_FILES=/data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/ca-bundle/fs/ca.pem /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/mjs/fs/api_bitbang.js /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/mjs/fs/api_config.js /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/mjs/fs/api_events.js /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/mjs/fs/api_gpio.js /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/mjs/fs/api_http.js /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/mjs/fs/api_log.js /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/mjs/fs/api_net.js /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/mjs/fs/api_sys.js /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/mjs/fs/api_timer.js /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/mjs/fs/api_uart.js /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/mjs/fs/init.js /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/mjs/fs/polyfill.js /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/modules/mjs/mjs/lib/api_dataview.js /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/modules/mjs/mjs/lib/api_file.js /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/modules/mjs/mjs/lib/api_math.js /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/i2c/mjs_fs/api_i2c.js /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/dht/mjs_fs/api_dht.js /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/mqtt/mjs_fs/api_mqtt.js /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/gcp/mjs_fs/api_gcp.js /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/neopixel/mjs_fs/api_neopixel.js /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/pwm/mjs_fs/api_pwm.js /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/rpc-common/mjs_fs/api_rpc.js /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/ota-http-client/mjs_fs/api_ota.js /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/wifi/mjs_fs/api_wifi.js /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/mjs/esp8266/fs/api_arch_uart.js /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/mjs/esp8266/fs/api_esp8266.js /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/wifi-setup-web-ui/fs/axios.min.js /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/wifi-setup-web-ui/fs/index.html /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/fs/api_string.js /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/fs/board.js /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/fs/comandos.js /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/fs/init.js /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/fs/mqtt.js /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/fs/neopixel.js /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/fs/rpc.js /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/fs/sensors.js /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/fs/tempo.js
APP_INCLUDES=/data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/i2c/include /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/atca/include /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/atca/cryptoauthlib/lib /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/mbedtls/include /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/mbedtls/include/esp8266 /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/mbedtls/mbedtls/include /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/vfs-common/include /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/vfs-common/include/esp8266 /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/mongoose/include /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/vfs-dev-part/include /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/vfs-fs-spiffs/include /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/vfs-fs-spiffs/include/spiffs /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/vfs-fs-spiffs/include/esp8266 /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/core/include /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/core/include/esp8266 /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/location/include /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/cron/include /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/dht/include /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/mqtt/include /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/gcp/include /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/http-server/include /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/mjs/include /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/neopixel/include /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/pwm/include /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/rpc-common/include /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/rpc-loopback/include /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/rpc-service-config/include /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/rpc-service-fs/include /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/ota-common/src /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/ota-common/include /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/ota-common/include/esp8266 /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/ota-http-client/include /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/rpc-service-ota/include /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/rpc-uart/include /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/wifi/include /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/wifi/include/esp8266
APP_SOURCES=/data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/build/gen/mgos_deps_init.c /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/i2c/src/mgos_i2c_master.c /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/i2c/src/gpio/mgos_i2c_gpio_master.c /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/atca/src/mgos_atca.c /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/atca/cryptoauthlib/lib/atca_cfgs.c /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/atca/cryptoauthlib/lib/atca_command.c /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/atca/cryptoauthlib/lib/atca_device.c /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/atca/cryptoauthlib/lib/atca_iface.c /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/atca/cryptoauthlib/lib/basic/atca_basic.c /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/atca/cryptoauthlib/lib/basic/atca_helpers.c /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/atca/cryptoauthlib/lib/host/atca_host.c /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/vfs-common/src/mgos_vfs.c /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/vfs-common/src/mgos_vfs_dev.c /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/vfs-common/src/mgos_vfs_internal.c /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/vfs-common/src/esp8266/esp_flash_writer.c /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/vfs-common/src/esp8266/esp_fs.c /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/vfs-common/src/esp8266/esp_vfs_dev_sysflash.c /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/vfs-dev-part/src/mgos_vfs_dev_part.c /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/vfs-fs-spiffs/src/mgos_vfs_fs_spiffs.c /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/vfs-fs-spiffs/src/spiffs/spiffs_cache.c /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/vfs-fs-spiffs/src/spiffs/spiffs_check.c /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/vfs-fs-spiffs/src/spiffs/spiffs_gc.c /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/vfs-fs-spiffs/src/spiffs/spiffs_hydrogen.c /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/vfs-fs-spiffs/src/spiffs/spiffs_nucleus.c /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/core/src/mgos_core.c /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/core/src/esp8266/esp_rboot.c /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/location/src/mgos_location.c /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/sntp/src/mgos_sntp.c /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/cron/src/ccronexpr.c /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/cron/src/mgos_cron.c /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/cron/src/sunriset.c /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/dht/src/mgos_dht.c /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/mqtt/src/mgos_mqtt.c /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/gcp/src/mgos_gcp.c /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/http-server/src/mgos_http_server.c /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/mjs/src/mos_mjs.c /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/modules/mjs/mjs.c /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/mjs/esp8266/src/esp8266_mjs.c /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/neopixel/src/mgos_neopixel.c /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/pwm/src/mgos_pwm.c /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/pwm/src/mgos_pwm_rgb_led.c /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/pwm/src/esp8266/esp_pwm.c /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/rpc-common/src/mg_rpc.c /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/rpc-common/src/mg_rpc_channel.c /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/rpc-common/src/mg_rpc_channel_http.c /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/rpc-common/src/mgos_rpc.c /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/rpc-loopback/src/mg_rpc_channel_loopback.c /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/rpc-service-config/src/mgos_service_config.c /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/rpc-service-fs/src/mgos_service_filesystem.c /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/rpc-uart/src/mgos_rpc_channel_uart.c /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/wifi/src/mgos_wifi.c /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/wifi/src/mjs_wifi.c /data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/deps/wifi/src/esp8266/esp_wifi.c
APP_VERSION=2.0
BOARD=
BUILD_DIR=/data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/build/objs
FFI_SYMBOLS=
FS_STAGING_DIR=/data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/build/fs
FW_DIR=/data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/build/fw
GEN_DIR=/data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/build/gen
MANIFEST_FINAL=/data/fwbuild-volumes/2.16.0/apps/ioled_firmware/esp8266/build_contexts/build_ctx_556414611/build/gen/mos_final.yml
MGOS=1
MGOS_HAVE_ATCA=1
MGOS_HAVE_CA_BUNDLE=1
MGOS_HAVE_CORE=1
MGOS_HAVE_CRON=1
MGOS_HAVE_DHT=1
MGOS_HAVE_GCP=1
MGOS_HAVE_HTTP_SERVER=1
MGOS_HAVE_I2C=1
MGOS_HAVE_LOCATION=1
MGOS_HAVE_MBEDTLS=1
MGOS_HAVE_MJS=1
MGOS_HAVE_MONGOOSE=1
MGOS_HAVE_MQTT=1
MGOS_HAVE_NEOPIXEL=1
MGOS_HAVE_OTA_COMMON=1
MGOS_HAVE_OTA_HTTP_CLIENT=1
MGOS_HAVE_PWM=1
MGOS_HAVE_RPC_COMMON=1
MGOS_HAVE_RPC_LOOPBACK=1
MGOS_HAVE_RPC_SERVICE_CONFIG=1
MGOS_HAVE_RPC_SERVICE_FS=1
MGOS_HAVE_RPC_SERVICE_OTA=1
MGOS_HAVE_RPC_UART=1
MGOS_HAVE_SNTP=1
MGOS_HAVE_VFS_COMMON=1
MGOS_HAVE_VFS_DEV_PART=1
MGOS_HAVE_VFS_FS_SPIFFS=1
MGOS_HAVE_WIFI=1
MGOS_HAVE_WIFI_SETUP_WEB_UI=1
MGOS_HAVE_ZZ_BOARDS=1
MGOS_PATH=/mongoose-os
MGOS_WIFI_ENABLE_AP_STA=0
PLATFORM=esp8266