/* This file is auto-generated by mos build, do not edit! */

#include <stdbool.h>
#include <stdio.h>

#include "common/cs_dbg.h"

#include "mgos_app.h"


extern bool mgos_mongoose_init(void);
extern bool mgos_ota_common_init(void);
extern bool mgos_vfs_common_init(void);
extern bool mgos_vfs_dev_part_init(void);
extern bool mgos_vfs_fs_spiffs_init(void);
extern bool mgos_core_init(void);
extern bool mgos_i2c_init(void);
extern bool mgos_atca_init(void);
extern bool mgos_location_init(void);
extern bool mgos_sntp_init(void);
extern bool mgos_cron_init(void);
extern bool mgos_dht_init(void);
extern bool mgos_mqtt_init(void);
extern bool mgos_gcp_init(void);
extern bool mgos_wifi_init(void);
extern bool mgos_http_server_init(void);
extern bool mgos_mbedtls_init(void);
extern bool mgos_mjs_init(void);
extern bool mgos_neopixel_init(void);
extern bool mgos_ota_http_client_init(void);
extern bool mgos_pwm_init(void);
extern bool mgos_rpc_common_init(void);
extern bool mgos_rpc_loopback_init(void);
extern bool mgos_rpc_service_config_init(void);
extern bool mgos_rpc_service_fs_init(void);
extern bool mgos_rpc_service_ota_init(void);
extern bool mgos_rpc_uart_init(void);

static const struct lib_descr {
  const char *title;
  bool (*init)(void);
} descrs[] = {

    // "mongoose". deps: [ ]
    {.title = "mongoose", .init = mgos_mongoose_init},

    // "ota-common". deps: [ ]
    {.title = "ota-common", .init = mgos_ota_common_init},

    // "vfs-common". deps: [ ]
    {.title = "vfs-common", .init = mgos_vfs_common_init},

    // "vfs-dev-part". deps: [ "vfs-common" ]
    {.title = "vfs-dev-part", .init = mgos_vfs_dev_part_init},

    // "vfs-fs-spiffs". deps: [ "vfs-common" ]
    {.title = "vfs-fs-spiffs", .init = mgos_vfs_fs_spiffs_init},

    // "core". deps: [ "mongoose" "ota-common" "vfs-common" "vfs-dev-part" "vfs-fs-spiffs" ]
    {.title = "core", .init = mgos_core_init},

    // "i2c". deps: [ "core" ]
    {.title = "i2c", .init = mgos_i2c_init},

    // "atca". deps: [ "i2c" ]
    {.title = "atca", .init = mgos_atca_init},

    // "location". deps: [ "core" ]
    {.title = "location", .init = mgos_location_init},

    // "sntp". deps: [ "core" ]
    {.title = "sntp", .init = mgos_sntp_init},

    // "cron". deps: [ "core" "location" "sntp" ]
    {.title = "cron", .init = mgos_cron_init},

    // "dht". deps: [ "core" ]
    {.title = "dht", .init = mgos_dht_init},

    // "mqtt". deps: [ "core" ]
    {.title = "mqtt", .init = mgos_mqtt_init},

    // "gcp". deps: [ "ca-bundle" "core" "mqtt" "sntp" ]
    {.title = "gcp", .init = mgos_gcp_init},

    // "wifi". deps: [ "core" ]
    {.title = "wifi", .init = mgos_wifi_init},

    // "http-server". deps: [ "atca" "core" "wifi" ]
    {.title = "http-server", .init = mgos_http_server_init},

    // "mbedtls". deps: [ ]
    {.title = "mbedtls", .init = mgos_mbedtls_init},

    // "mjs". deps: [ "core" ]
    {.title = "mjs", .init = mgos_mjs_init},

    // "neopixel". deps: [ "core" ]
    {.title = "neopixel", .init = mgos_neopixel_init},

    // "ota-http-client". deps: [ "core" "ota-common" ]
    {.title = "ota-http-client", .init = mgos_ota_http_client_init},

    // "pwm". deps: [ "core" ]
    {.title = "pwm", .init = mgos_pwm_init},

    // "rpc-common". deps: [ "core" "http-server" "mongoose" ]
    {.title = "rpc-common", .init = mgos_rpc_common_init},

    // "rpc-loopback". deps: [ "core" "rpc-common" ]
    {.title = "rpc-loopback", .init = mgos_rpc_loopback_init},

    // "rpc-service-config". deps: [ "core" "rpc-common" ]
    {.title = "rpc-service-config", .init = mgos_rpc_service_config_init},

    // "rpc-service-fs". deps: [ "core" "rpc-common" ]
    {.title = "rpc-service-fs", .init = mgos_rpc_service_fs_init},

    // "rpc-service-ota". deps: [ "core" "ota-http-client" "rpc-common" ]
    {.title = "rpc-service-ota", .init = mgos_rpc_service_ota_init},

    // "rpc-uart". deps: [ "core" "rpc-common" ]
    {.title = "rpc-uart", .init = mgos_rpc_uart_init},

};

bool mgos_deps_init(void) {
  size_t i;
  for (i = 0; i < sizeof(descrs) / sizeof(struct lib_descr); i++) {
    LOG(LL_DEBUG, ("init %s...", descrs[i].title));
    if (!descrs[i].init()) {
      LOG(LL_ERROR, ("%s init failed", descrs[i].title));
      return false;
    }
  }

  return true;
}
