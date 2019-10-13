#Requires

* ESP-IDF version: release/v4.0

# Install

Clone repository

* `git clone git@github.com:rpiontik/ThingJS-template.git`
* `cd ThingJS-template`
* `git submodule init`
* `git submodule update`

Update submodules

* `cd components/thingjs_core/`
* `git checkout master`
* `git pull`
* `cd ../../components/thingjs_front/`
* `git checkout master`
* `git pull`

Build frontend 

* `npm install`
* `npm run build`

Project is ready to make firmware 

# Prepare to flash

* `$IDF_PATH/tools/idf.py erase_flash`