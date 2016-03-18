FROM nodesource/node:4.0

RUN apt-get update
RUN apt-get install tree

ADD package.json package.json
RUN npm install

RUN mkdir -p /usr/src/app
WORKDIR .
COPY * /usr/src/app/
COPY .* /usr/src/app/

#RUN tree /usr/src/app/

ADD hello.js hello.js
CMD ["node","hello.js"]

EXPOSE 1337

CMD ["node","app.js"]


