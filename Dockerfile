FROM docker.n8n.io/n8nio/n8n:latest

USER root

RUN mkdir -p /home/node/.n8n \
 && cd /home/node/.n8n \
 && npm init -y \
 && npm install n8n-nodes-linewebhook @line/bot-sdk \
 && chown -R node:node /home/node/.n8n

USER node
