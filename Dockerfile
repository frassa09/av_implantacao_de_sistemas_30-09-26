FROM node:alpine AS FRONTEND

WORKDIR /app

COPY /frontend/package*.json /app/

RUN npm i

COPY /frontend/ /app/

EXPOSE 5173


CMD [ "npm", "run", "dev" ]


FROM node:alpine AS BACKEND

WORKDIR /app

COPY /backend/package*.json /app/

RUN npm i

COPY /backend/ /app/

EXPOSE 3000


CMD [ "npm", "run", "start" ]