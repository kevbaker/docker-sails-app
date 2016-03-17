FROM nodesource/node:4.0

RUN apt-get -y update

ADD package.json package.json  

RUN npm install 




