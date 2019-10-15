# Requires

* ESP-IDF version: release/v4.0

# Install

Clone repository

* `git clone git@github.com:rpiontik/ThingJS-template.git`
* `cd ThingJS-template`
* `git submodule update --init --recursive`

Build frontend 

* `cd components/thingjs_front/`
* `npm install`
* `npm run build`

Project is ready to make firmware 

# Prepare to flash

* `$IDF_PATH/tools/idf.py erase_flash`