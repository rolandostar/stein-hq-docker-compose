FROM node:14
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
EXPOSE 3000
CMD ["sh","-c","npm run stein:start && tail -f ./node_modules/stein_core/*.log"]