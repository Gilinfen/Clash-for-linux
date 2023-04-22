FROM alpine:latest

RUN apk update && apk add curl wget

WORKDIR /root

COPY ./src /root

EXPOSE 7890

ENV CLASH_URL='https://sub-sg01.yunti.monster/link/I3wzgerHe6e6S2xP?clash=1&extend=1'
ENV CLASH_SECRET=${CLASH_SECRET}

RUN chmod +x /root/start.sh /root/restart.sh /root/shutdown.sh /root/entrypoint.sh

CMD ["/bin/sh", "-c", "cd /root && sh start.sh && sh entrypoint.sh && tail -f /dev/null"]
