FROM nodesource/node:4.0

RUN apt-get update

ADD package.json package.json
RUN npm install

RUN mkdir -p /usr/src/app
WORKDIR .
COPY * /usr/src/app/
COPY .* /usr/src/app/

ADD hello.js hello.js
CMD ["node","hello.js"]

CMD ["node","/usr/src/app/app.js"]
