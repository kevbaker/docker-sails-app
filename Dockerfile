FROM nodesource/node:4.0    

RUN apt-get update
RUN apt-get install tree

ADD package.json package.json

RUN npm install

#RUN mkdir -p /usr/src/app
ADD . .

#WORKDIR /usr/src/app/
#COPY * /usr/src/app/
#COPY .* /usr/src/app/


#RUN tree /usr/src/app/

EXPOSE 3000

#CMD ["node","app.js","--port","3000"]

CMD ["sails","lift","--port","3000"]

