FROM node:lts-bullseye

RUN npm install firebase-tools -g

WORKDIR /home/node

CMD ["firebase", "emulators:start", "--project", "demo-local", "--only", "auth", "--import=./data", "--export-on-exit=./data"]
