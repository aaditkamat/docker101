FROM "node:alpine"

WORKDIR /code

COPY package.json .

EXPOSE 3000

RUN npm install

COPY . .

CMD ["npm", "start"]

