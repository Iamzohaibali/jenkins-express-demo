FROM node:18-alpine

WORKDIR /app

# install only required deps first (better caching)

COPY package*.json ./

RUN npm install --production

# copy app files

COPY . .

EXPOSE 3000

CMD ["node", "app.js"]
