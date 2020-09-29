#!/bin/bash

if [ -n "$1" ]
then
    while [ -n "$1" ]
    do
        case $1 in
            clean)
            $IDF_PATH/tools/idf.py clean
            ;;
            build)
            $IDF_PATH/tools/idf.py all
            ;;
            build-front)
            cd components/thingjs_front/ && npm run build && cd ../..
            ;;
            build-all)
            cd components/thingjs_front/ && npm run build && cd ../.. && $IDF_PATH/tools/idf.py all
            ;;
            flash)
            $IDF_PATH/tools/idf.py flash
            ;;
            erase)
            $IDF_PATH/tools/idf.py erase
            ;;
            monitor)
            $IDF_PATH/tools/idf.py monitor
            ;;
            pull-all)
            echo "Pull esp32"
            git pull
            echo "Pulling thingjs_boards"
            cd components/thingjs_boards/ && git pull && cd ..
            echo "Pulling thingjs_extern"
            cd thingjs_extern && git pull && cd ..
            echo "Pulling thingjs_front"
            cd thingjs_front && git pull && cd ..
            echo "Pulling thingjs_stdi"
            cd thingjs_stdi && git pull && cd ..
            ;;
            checkout-all)
            if [[ $2 == "-b" ]]; then
              over_params="-b"
              shift
            fi
            echo "Checkout esp32 to $over_params $2"
            git checkout $over_params $2 && git pull
            echo "Checkout thingjs_boards to $over_params $2"
            cd components/thingjs_boards/ && git checkout $over_params $2 && git pull
            cd ..
            echo "Checkout thingjs_front to $over_params $2"
            cd thingjs_front && git checkout $over_params $2 && git pull
            cd ..
            echo "Checkout thingjs_stdi to $over_params $2"
            cd thingjs_stdi && git checkout $over_params $2 && git pull
            cd ..
            shift
            ;;
            air)
            if [ ! -d "./build/" ]
            then
                echo "Prepare firmware..."
                $IDF_PATH/tools/idf.py all
            fi

            ip=$(awk -F "=" '/controller-ip/ {print $2}' config.ini)
            echo "Try to upload firmware to $ip"
            curl -m 60 -# -F 'data=@./build/ThingJS.bin;filename=firmware.bin' "http://$ip/firmware"
            echo ""
            ;;
            *)
            echo "Unknown command $1"
            ;;
        esac
        shift
    done
else
    $IDF_PATH/tools/idf.py all
fi
