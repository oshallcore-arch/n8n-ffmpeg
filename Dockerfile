FROM n8nio/n8n:latest-debian

USER root

RUN apt-get update && \
    apt-get install -y ffmpeg && \
    apt-get clean

USER node

CMD ["n8n"]
