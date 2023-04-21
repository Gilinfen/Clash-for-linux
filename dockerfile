FROM alpine:latest

WORKDIR /app

COPY . .

RUN chmod +x ./start.sh ./shutdown.sh ./restart.sh ./bin/*

CMD [ "./start.sh;",'source /etc/profile.d/clash.sh;','proxy_on' ]