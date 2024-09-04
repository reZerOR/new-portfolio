FROM node:18
WORKDIR /app
COPY package.json ./
RUN npm install
COPY . .
ENV NODE_ENV=development
ENV CHOKIDAR_USEPOLLING=true
ENV WATCHPACK_POLLING=true
CMD ["npm","run","dev"]
