#!/bin/bash

DELAY=5
WAIT_KAFKA=45
docker-compose --file docker-compose.yml down
docker rm -f $(docker ps -a -q)
docker volume rm $(docker volume ls -q)

docker-compose --file docker-compose.yml up -d

echo "------ Waiting for ${DELAY} seconds for mongo to start ------"
sleep $DELAY
echo "------ Running mongo_source initiation ------"
docker exec mongo_source ./scripts/rs-init.sh
echo "------ mongo_source initiation done ------"

echo "------ waiting for ${WAIT_KAFKA} seconds for kafka to start ------"
sleep $WAIT_KAFKA
curl -i -X POST -H "Accept:application/json" -H  "Content-Type:application/json" http://localhost:8083/connectors/ -d @./scripts/mongo_source_config.json
curl -i -X POST -H "Accept:application/json" -H  "Content-Type:application/json" http://localhost:8083/connectors/ -d @./scripts/mongo_target_config.json
echo "\n------ good to go! ------"