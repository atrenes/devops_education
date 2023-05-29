#!/bin/bash

DELAY=5

mongo <<EOF
rs.initiate();
EOF

echo "------ Waiting for ${DELAY} seconds for mongo_source configuration to be applied ------"

sleep $DELAY

mongo < ./scripts/init.js