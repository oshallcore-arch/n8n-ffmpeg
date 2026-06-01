FROM node:18-bullseye

# Install ffmpeg
RUN apt-get update && \
    apt-get install -y ffmpeg && \
    apt-get clean

# Install a stable version of n8n (latest npm versions are broken)
RUN npm install -g n8n@1.67.3

# Create n8n data directory
RUN mkdir -p /home/node/.n8n

# Expose n8n port
EXPOSE 5678

# Start n8n
CMD ["n8n"]
