FROM n8nio/n8n:latest

USER root

RUN apt-get update && \
    apt-get install -y ffmpeg && \
    mkdir -p /videos && \
    chown -R node:node /videos

USER node