FROM node:slim
WORKDIR /src/app
COPY package*.json ./
RUN npm install
CMD ["npm", "run", "serve"]