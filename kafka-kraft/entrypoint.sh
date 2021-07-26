#!/bin/bash


SUUID=$(./bin/kafka-storage.sh random-uuid)

./bin/kafka-storage.sh format -t $SUUID -c ./config/kraft/server.properties
./bin/kafka-server-start.sh ./config/kraft/server.properties
