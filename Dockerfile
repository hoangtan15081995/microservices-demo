FROM node:16

EXPOSE 3000

WORKDIR /app

RUN npm i npm@latest -g


COPY package.json package-lock.json ./

run npm install

COPY . .

CMD ["node", "server.js"]

# docker tag local-image:tagname new-repo:tagname
# docker push new-repo:tagname