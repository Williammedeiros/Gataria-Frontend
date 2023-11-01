FROM node:18

ARG REACT_APP_STAGE=dev

ENV REACT_APP_STAGE ${REACT_APP_STAGE}

WORKDIR /app

COPY package*json .

RUN npm install

COPY . . 

EXPOSE 3000

CMD npm run start:${REACT_APP_STAGE}