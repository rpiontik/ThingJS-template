# Overview
The template project of ThingsJS open source IoT platform.

# Requires
* ESP-IDF version: release/v4.0
* ThingJS-boards (https://github.com/rpiontik/ThingsJS-boards)
* ThingJS-extern (https://github.com/rpiontik/ThingJS-extern)
* ThingJS-core (https://github.com/rpiontik/ThingJS-core)
* ThingJS-front (https://github.com/rpiontik/ThingJS-front)
* ThingJS-stdi (https://github.com/rpiontik/ThingJS-stdi)

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

* `idf.py erase_flash`
* `idf.py partition_table-flash`

# Flash to controller
* `idf.py flash`

# Licensing

ThingsJS is released under
[GNU GPL v.2](http://www.gnu.org/licenses/old-licenses/gpl-2.0.html)
open source license.

The first time the module will be released as static library file. One year after the first release, 
the source code will be published.
