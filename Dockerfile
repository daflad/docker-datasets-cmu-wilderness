FROM ubuntu:18.04

ENV BIBLEIS_API_KEY=52e62d4c-f7c8-4a8b-9008-8634d0fbddb0

RUN apt-get update && apt-get install -y wget

RUN mkdir /opt/worker
ADD get_from_bibleis /opt/worker/

WORKDIR /opt/worker/

ENTRYPOINT ./get_from_bibleis
