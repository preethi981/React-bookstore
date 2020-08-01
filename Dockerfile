FROM node:8

WORKDIR /

ENV PATH /node_modules/.bin:$PATH

COPY package.json ./
RUN npm install 
RUN npm deploy


COPY . ./

CMD ["npm", "start"]