FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo
ENV MONGODB_CLUSTER_ADDRESS gha-course.uldy9.mongodb.net
ENV MONGODB_USERNAME alexdiv
ENV MONGODB_PASSWORD OkBq6LEYnHHggLLr
ENV PORT 8080

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]