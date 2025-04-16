FROM node

RUN mkdir -p /usr/app #create a new directory 

COPY package*.json /usr/app/
COPY app/* /usr/app/

WORKDIR /usr/app

EXPOSE 8080 // open port 

RUN npm install 
CMD ["node", "server.js"]


