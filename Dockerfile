FROM nodesource/node:4.0    

RUN apt-get update
RUN apt-get install tree
RUN npm install pm2 -g

ADD package.json package.json

RUN npm install

ADD . .

EXPOSE 3000

CMD ["node","app.js","--port","3000"]

# reference: https://nodesource.com/blog/dockerizing-your-nodejs-applications/
# usage: 
# docker build -t "docker-sails-app" .
# docker run -it -p 3000:3000 "docker-sails-app"
