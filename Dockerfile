FROM docker.n8n.io/n8nio/n8n:latest

USER root

RUN mkdir -p /home/node/.n8n/custom \
 && cd /home/node/.n8n/custom \
 && npm init -y \
 && npm pkg set name="n8n-custom" \
 && npm install n8n-nodes-linewebhook @line/bot-sdk \
 && chown -R node:node /home/node/.n8n

USER node
