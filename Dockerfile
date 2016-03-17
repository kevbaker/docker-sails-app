FROM nodesource/node:4.0

ADD hello.js hello.js

CMD ["node","hello.js"]
