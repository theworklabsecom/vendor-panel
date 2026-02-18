FROM node:18-alpine

WORKDIR /app

RUN corepack enable && corepack prepare yarn@3.2.1 --activate

COPY . .

RUN yarn install

EXPOSE 5173

CMD ["yarn", "dev", "--host", "0.0.0.0", "--port", "5173"]
