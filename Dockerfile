FROM node:18-bullseye

# Install ffmpeg
RUN apt-get update && \
    apt-get install -y ffmpeg && \
    apt-get clean

# Install n8n
RUN npm install -g n8n

# Create n8n user folder
RUN mkdir -p /home/node/.n8n

# Expose n8n port
EXPOSE 5678

# Start n8n
CMD ["n8n"]
