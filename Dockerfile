FROM node:20-bullseye

# Install system dependencies
RUN apt-get update && \
    apt-get install -y ffmpeg python3 build-essential && \
    apt-get clean

# Install n8n using the official prebuilt distribution
RUN npm install -g n8n@2.3.1

# Create n8n data directory
RUN mkdir -p /home/node/.n8n

EXPOSE 5678

CMD ["n8n"]
