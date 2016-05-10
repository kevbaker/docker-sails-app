FROM nodesource/node:4.0    

RUN apt-get update
RUN apt-get install tree

ADD package.json package.json

RUN npm install

ADD . .

EXPOSE 3000

CMD ["node","app.js","--port","3000"]

# reference: https://nodesource.com/blog/dockerizing-your-nodejs-applications/
# usage: 
# docker build -t "docker-sails-app" .
# docker run -it "docker-sails-app"
