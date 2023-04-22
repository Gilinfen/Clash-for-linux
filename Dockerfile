FROM alpine:latest

WORKDIR /app

COPY ./src /app/

EXPOSE 7890

ENV CLASH_URL=${CLASH_URL}
ENV CLASH_SECRET=${CLASH_SECRET}

RUN chmod +x ./start.sh ./restart.sh ./shutdown.sh ./entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]

CMD ["sh"]
