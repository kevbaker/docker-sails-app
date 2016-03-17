FROM nodesource/node:4.0

RUN apt-get update

ADD package.json package.json
RUN npm install

ADD hello.js hello.js

CMD ["node","hello.js"]
