FROM node:20
WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

ENV APP_ENV=production
ENV APP_PORT=8080
ENV MODEL_URL="https://storage.googleapis.com/sertamulia-bucket-capstone/model-in-prod/model.json"
ENV PROJECT_ID="submissionmlgc-mirfanefendi"

CMD [ "npm", "start" ]

EXPOSE 8080
