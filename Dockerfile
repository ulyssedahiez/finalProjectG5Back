FROM alpine:latest

WORKDIR /app

COPY . /app/

RUN apk add --no-cache git
RUN apk add --no-cache npm

RUN git clone https://github.com/ulyssedahiez/finalProjectG5Back

WORKDIR /app/finalProjectG5Back

RUN npm i

EXPOSE 3000

CMD [ "npx", "json-server", "db.json" ]


