#!/bin/bash

#ID='docker stop rtmpStream'
#docker rm $ID

if [ $# -eq 0 ]
then
    	echo "expected: ./start rtmp://streaming.server.ltd/stream/destination"
	exit 1
fi

RTMP_DESTINATION=$1

docker-compose up -d
