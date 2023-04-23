FROM dreamacro/clash:latest

# 你的Clash订阅地址
ENV CLASH_URL="" 

EXPOSE 7890

RUN wget -O /root/.config/clash/config.yaml ${CLASH_URL}

CMD ["clash"]


