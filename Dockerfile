FROM n8nio/n8n

USER root

RUN apt-get update && \
    apt-get install -y ffmpeg && \
    apt-get clean

USER node

CMD ["n8n"]
