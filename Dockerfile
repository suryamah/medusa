FROM node:14

WORKDIR /

copy package.json yarn.lock ./

RUN npm install

RUN chmod -R a+x node_modules

COPY . .

EXPOSE 9000

CMD ["npm", "run", "start"]