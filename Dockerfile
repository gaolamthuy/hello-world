FROM node:12.16.1-alpine

WORKDIR /app

COPY package.json package.json

RUN npm install

COPY . .

CMD ["npm", "start"]

# # syntax=docker/dockerfile:1
# FROM alpine
# RUN --mount=type=secret,id=github_token \
#     cat /run/secrets/github_token
