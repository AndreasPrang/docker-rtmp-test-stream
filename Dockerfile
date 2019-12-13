FROM ubuntu

RUN apt-get update; apt-get install -y software-properties-common
RUN add-apt-repository ppa:jonathonf/ffmpeg-3
RUN apt update; \ 
	apt install -y ffmpeg libav-tools x264 x265

ADD BigBuckBunny_320x180.mp4 BigBuckBunny_320x180.mp4

CMD ["sh", "-c", "ffmpeg -re -stream_loop -1 -i BigBuckBunny_320x180.mp4 -c copy -f flv ${RTMP_DESTINATION}"]
