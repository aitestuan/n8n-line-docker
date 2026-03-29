FROM docker.n8n.io/n8nio/n8n:latest

USER root

RUN mkdir -p /home/node/.n8n/custom \
 && cd /home/node/.n8n/custom \
 && printf '{ "name": "n8n-custom", "version": "1.0.0" }\n' > package.json \
 && npm install n8n-nodes-linewebhook @line/bot-sdk \
 && chown -R node:node /home/node/.n8n

USER node

# 👇 關鍵！啟動 n8n
CMD ["n8n"]
