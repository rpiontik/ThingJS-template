# Overview
The template project of ThingsJS. 

ThingsJS is open source IoT platform. 
Mission of the platform - provide opportunity to make complex IoT projects by community.

# Requires
* ESP-IDF version: release/v4.0 (a21eb04cc6b93995970effcb6b86983579ed8ec2)
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

* `idf.py all`
* `idf.py erase_flash`
* `idf.py partition_table-flash`

# Flash to controller
* `idf.py flash`

# Documentation
* [Frontend SDK](https://github.com/rpiontik/ThingJS-front/blob/master/README.md)
* [Standard interfaces](https://github.com/rpiontik/ThingJS-stdi/blob/master/README.md)
* [Samples](https://github.com/rpiontik/ThingJS-front/tree/master/src/applications)

# Support, community 
[Telegramm channel](https://t.me/thingjs)

# Articles
* [ThingJS v1.0-alpha](https://habr.com/ru/post/474356/)

# Licensing
ThingsJS is released under
[GNU GPL v.2](http://www.gnu.org/licenses/old-licenses/gpl-2.0.html)
open source license.
