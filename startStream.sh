#!/bin/bash

#ID='docker stop rtmpStream'
#docker rm $ID

if [ $# -eq 0 ]
then
    	echo "expected: ./start rtmp://streaming.server.ltd/stream/destination"
	exit 1
fi

RTMP_DESTINATION=$1

docker build -t rtmp_stream .

docker run -d \
	--rm \
	--name rtmp_stream \
	-e "RTMP_DESTINATION=$RTMP_DESTINATION" \
	rtmp_stream
