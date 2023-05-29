#!/bin/bash

DELAY=5

docker-compose --file docker-compose.yml down
docker rm -f $(docker ps -a -q)
docker volume rm $(docker volume ls -q)

docker-compose --file docker-compose.yml up -d

echo "------ Waiting for ${DELAY} seconds for containers to go up ------"
sleep $DELAY
echo "------ Running mongo_source initiation ------"
docker exec mongo_source ./scripts/rs-init.sh
echo "------ mongo_source initiation done ------"