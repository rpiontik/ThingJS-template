/**********************************************************************************
 *
 * 									ThingJS
 * 								OpenSource project
 *							Author: r.piontik@mail.ru
 *									  2019
 *
 **********************************************************************************
 */

#define MG_NET_IF_SOCKET                        1
#define MG_NET_IF_SIMPLELINK                    2
#define MG_NET_IF_LWIP_LOW_LEVEL                3
#define MG_SSL_IF_SIMPLELINK                    3
#define MG_ENABLE_HTTP_STREAMING_MULTIPART      1

// System modules
#include <freertos/FreeRTOSConfig.h>
#include <freertos/FreeRTOS.h>
#include <esp_system.h>
#include <esp_event_loop.h>
#include <nvs_flash.h>
#include <esp_log.h>

//ThingJS core module
#include <thingjs_core.h>

void init() {
    nvs_flash_init();
    tcpip_adapter_init();

    thingjsInit();
    thingjsStart();
}

void app_main(void) {
    init();
    while (true) {
        vTaskDelay(5000 / portTICK_PERIOD_MS);
        time_t now = 0;
        ESP_LOGD(TAG_MAIN, "ESP32 RAM left %d at %lu", esp_get_free_heap_size(), (unsigned long) now);
    }
}