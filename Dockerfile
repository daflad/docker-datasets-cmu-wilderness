FROM ubuntu:18.04

ENV BIBLEIS_API_KEY=52e62d4c-f7c8-4a8b-9008-8634d0fbddb0

RUN apt-get update \
	&& apt-get install -y git build-essential libncurses5-dev sox wget  \
                              csh ffmpeg html2text vim \
	&& rm -rf /var/lib/apt/lists/*

RUN mkdir /opt/datasets-CMU_Wilderness
ADD datasets-CMU_Wilderness /opt/datasets-CMU_Wilderness

WORKDIR /opt/datasets-CMU_Wilderness

RUN ./bin/do_found make_dependencies
