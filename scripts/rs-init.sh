#!/bin/bash

DELAY=15

mongo <<EOF
var config = {
    "_id": "dbrs",
    "version": 1,
    "members": [
        {
            "_id": 1,
            "host": "mongo_source:27017",
            "priority": 2
        },
        {
            "_id": 2,
            "host": "mongo_target:27017",
            "priority": 1
        }
    ]
};
rs.initiate(config, { force: true });
EOF

echo "------ Waiting for ${DELAY} seconds for mongo_source configuration to be applied ------"

sleep $DELAY

mongo < ./scripts/init.js