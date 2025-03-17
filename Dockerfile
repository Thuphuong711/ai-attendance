FROM node:22

WORKDIR /backend

COPY ["package.json", "package-lock.json*", "./"]
RUN npm install --production

COPY . .

EXPOSE 5001

CMD ["npm", "start"]