FROM node:18-bullseye

# Install system dependencies
RUN apt-get update && \
    apt-get install -y ffmpeg python3 build-essential && \
    apt-get clean

# Install n8n from GitHub (stable branch)
RUN npm install -g git && \
    npm install -g https://github.com/n8n-io/n8n.git

# Create n8n data directory
RUN mkdir -p /home/node/.n8n

EXPOSE 5678

CMD ["n8n"]
